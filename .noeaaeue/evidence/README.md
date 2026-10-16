# Evidence index

This directory is an evidence registry, not a proof claim by itself. Every
record must be read together with its `status`, source/hash bindings, and the
command or receipt that produced it. A file is **accessible evidence** only if
it is reachable from this index, parses successfully, names its source inputs,
and states whether the result is native, static, conditional, historical, or
pending.

## Start here

- `source-manifest.json` — current source and upstream bindings.
- `check-results.json` — checker/toolchain binding for the main verification
  surface.
- `lean-consolidation-rigor-post-merge-2026-10-14.json` — latest consolidated
  rigor record before the current remote synchronization.
- `repository-conformance-*.json` — timestamped repository-level conformance
  observations; the newest timestamp is the current one unless its execution
  state says otherwise.

## Evidence classes

### Current scoped checks

These are the subject-level records under `Analysis/`, `NumberTheory/`, and
the named root `*-checks.json` files. They are reviewable only within their
declared scope. `PASS` or `*_PASSED` does not mean whole-corpus admission or
an RH proof; consult the `status`, `rh_proved`, and `claim_limit` fields.

### Source and provenance bindings

`source-manifest*.json`, `source-intake*.json`, `*-source-manifest.json`,
`moebius-response-sources.json`, and `policy-inputs/` record where material
came from and which revision/hash it binds to. These are provenance records,
not theorem-verification receipts.

### Citation and claim projections

`citation-*.json` records are human-readable claim projections. They are
admissible for orientation only when their status is explicitly native or
checked; names containing `CANDIDATE`, `PENDING`, `WRITTEN`, `CONDITIONAL`, or
`NOT_NATIVE` are not final admissions.

### Historical and diagnostic records

Timestamped consolidation, intake, pickup, shell-diagnostic, and original/
current comparison records are retained for audit history. They must not be
used as the current result unless their bound commit and execution state match
the current checkout.

### Archive-only material

`archive/` contains raw reconstruction material and other bulky historical
inputs. It is intentionally not counted as a verification result. In
particular, Git object packs or opaque blobs are source-recovery material, not
independently accessible evidence until a manifest maps them to readable files
and a reproducible command.

## Review protocol

1. Read this file and identify the evidence class.
2. Parse the JSON and inspect `status`, `claim_limit`/`scope`, source hashes,
   observed commit, and execution state.
3. Follow every referenced source and command; missing references downgrade the
   record to inaccessible.
4. Prefer the newest source-bound record. Preserve older records for history,
   but never silently substitute them for current evidence.

The repository-level catalog is generated in `catalog.json`; it lists every
tracked evidence file, its class, parse status, declared status, and SHA-256.
