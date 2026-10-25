# Publication and verification records

## Authority and identity

Formal source contains mathematical declarations. The source registry binds
persistent theorem IDs to semantic Lean modules and declarations. Git identifies
immutable source states. Lean checks formal proofs. Ghost presents results and
links to their verification records.

These identities are separate: a theorem ID belongs to the result, a Lean name
belongs to the mathematics, and a Ghost slug belongs to presentation. A Ghost
article or numerical experiment is not a formal proof.

The repository currently contains no registered published theorem. The `T-017`
examples below describe a future workflow only. No publication tag, certificate,
or `#kernel-verified` claim should be created for these examples.

## Publication gate

Before granting `#kernel-verified` status, the publication system must verify an
immutable source commit and:

1. Reproduce its checked-in Lean toolchain and exact dependency manifest.
2. Pass the local build and lint gates with warnings treated as errors.
3. Resolve the registry's module and fully qualified declaration, and check the
   claimed statement and result kind.
4. Audit the declaration's transitive axiom dependencies, reject `sorryAx`, and
   record and review the remaining foundational axioms and explicit assumptions.
5. Bind the theorem ID, declaration, module, source commit, toolchain, and
   dependency manifest in the generated verification record.

The source `scripts/verify.sh` gate now resolves registered theorem targets and
runs exact `#print` / `#print axioms` audits through
`scripts/verify-registry.sh`. That is still only the source-acceptance layer: it
does not create immutable theorem tags, generate release-bound certificates, or
synchronize Ghost. Those publication operations must be performed against the
exact immutable source commit. Preserve the distinction between a defined
proposition, a conditional theorem with explicit assumptions, and a proof of the
intended unconditional statement.

## Source metadata and generated evidence

The committed registry contains stable source metadata only. Do not add
`commit_sha`, `verified_at`, `build_id`, or `certificate_hash` fields to theorem
source entries. A certificate that contains a commit hash cannot live in the
same commit whose hash it purports to identify.

Use this order:

```text
source commit
  -> immutable commit SHA
  -> verification of that commit
  -> generated certificate
  -> CI artifact, release artifact, or publication storage
```

Local generated output belongs in ignored `artifacts/`. Certificates attest to
completed Git objects and remain external to their authoritative source commits.
Do not write generated verification metadata back into those source commits.

## Immutable publication versions

Freeze each published version with an annotated tag, using
`theorem/t-017/v1`, `theorem/t-017/v2`, and so on. For a real, verified `T-017`,
the commands would resemble:

```sh
git tag -a theorem/t-017/v1 <verified-commit-sha> \
  -m "T-017: Finite Holonomy Resolution — publication v1"
git show theorem/t-017/v1
```

Replace the placeholder with the exact verified commit. Inspect the tag and
record both the tag name and its resolved source commit. Never move, delete, or
reuse an existing publication tag to revise a result. Pushing a tag requires an
explicit request, just as remote branch changes do.

Ghost should record the theorem ID, Lean declaration, Git tag, and Git commit,
and refer to the associated verification evidence. Never bind a publication
merely to `main`, `HEAD`, or `latest`; those references move.

Never silently change a published statement. A materially changed proposition
requires a new version or, when its identity has changed, a new theorem ID.
Preserve prior source commits, tags, statements, and verification evidence so
earlier versions remain inspectable.
