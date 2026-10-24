# eval_minpolyDiv_of_aeval_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a25b570-c2a4-0a16-bc10-15ff5665094d",
  "kind": "lemma",
  "lexical_name": "eval_minpolyDiv_of_aeval_eq_zero",
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
  "slug": "eval-minpolydiv-of-aeval-eq-zero--813d7a685be737def798baad",
  "source": {
    "blob": "c6bc468459788d85f3cec26bc0529de3f64d2411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:813d7a685be737def798baad2528f045f89ee954425ad7c3df4bec7ed6744458",
  "verification": {
    "reference": "docs/verification/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a25b570-c2a4-0a16-bc10-15ff5665094d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eval_minpolyDiv_of_aeval_eq_zero [IsDomain S] [DecidableEq S]
    {y} (hy : aeval y (minpoly R x) = 0) :
    (minpolyDiv R x).eval y = if x = y then aeval x (derivative <| minpoly R x) else 0 := by
  rw [eval, eval₂_minpolyDiv_of_eval₂_eq_zero, RingHom.id_apply, RingHom.id_apply]
  simpa [aeval_def] using hy


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinpolyDiv/Variant5938ad162d0b8f8c80a786fbfa267811cc8aaf64f38c419dd89466fb0b82ffbb.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6bc468459788d85f3cec26bc0529de3f64d2411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
