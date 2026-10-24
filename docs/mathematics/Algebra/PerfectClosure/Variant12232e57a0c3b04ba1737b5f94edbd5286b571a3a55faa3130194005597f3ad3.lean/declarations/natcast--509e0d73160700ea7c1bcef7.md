# natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2919553f-a0a7-0968-ddd5-a5d851402907",
  "kind": "theorem",
  "lexical_name": "natCast",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "natcast--509e0d73160700ea7c1bcef7",
  "source": {
    "blob": "9e2c3a45e4a6356d1feb76bc8bfb787e7690b655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 355,
    "path": "GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:509e0d73160700ea7c1bcef7133f493dab2cc87c0403df508fd7f80c1230eee1",
  "verification": {
    "reference": "docs/verification/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2919553f-a0a7-0968-ddd5-a5d851402907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast (n x : ℕ) : (x : PerfectClosure K p) = mk K p (n, x) := by
  induction' n with n ih
  · induction' x with x ih
    · simp
    rw [Nat.cast_succ, Nat.cast_succ, ih]
    rfl
  rw [ih]; apply Quot.sound
  suffices R K p (n, (x : K)) (Nat.succ n, frobenius K p (x : K)) by
    rwa [frobenius_natCast K p x] at this
  apply R.intro

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e2c3a45e4a6356d1feb76bc8bfb787e7690b655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
