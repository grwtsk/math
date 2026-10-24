# finiteCyclic_stdAddChar_sub_one_norm_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdda6293-8778-d07a-c46e-8e9443371e7c",
  "kind": "theorem",
  "lexical_name": "finiteCyclic_stdAddChar_sub_one_norm_neg",
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
  "slug": "finitecyclic-stdaddchar-sub-one-norm-neg--3c970c08a38930b7bafe2acf",
  "source": {
    "blob": "5d78497f8a1cdadee5da6a0b4a8083b3c97ab008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c970c08a38930b7bafe2acfaac948d4d16e720b2b5e0d8edd741e010deabfc6",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdda6293-8778-d07a-c46e-8e9443371e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finiteCyclic_stdAddChar_sub_one_norm_neg (t : ZMod q) :
    ‖ZMod.stdAddChar (-t) - 1‖ = ‖ZMod.stdAddChar t - 1‖ := by
  have hprod : ZMod.stdAddChar (-t) * ZMod.stdAddChar t = 1 := by
    rw [← map_add_eq_mul]
    simp
  have hfactor :
      ZMod.stdAddChar (-t) - 1 =
        -ZMod.stdAddChar (-t) * (ZMod.stdAddChar t - 1) := by
    rw [mul_sub, neg_mul, hprod]
    ring
  rw [hfactor, norm_mul, norm_neg]
  have hchar : ‖ZMod.stdAddChar (-t)‖ = 1 := by
    exact Circle.norm_coe (ZMod.toCircle (-t))
  rw [hchar, one_mul]

/-- Exact sine formula using the canonical representative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d78497f8a1cdadee5da6a0b4a8083b3c97ab008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
