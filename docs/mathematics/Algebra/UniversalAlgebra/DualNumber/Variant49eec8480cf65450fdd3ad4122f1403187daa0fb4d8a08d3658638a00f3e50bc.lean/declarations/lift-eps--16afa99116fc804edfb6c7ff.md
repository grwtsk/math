# lift_eps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd28d157-27c7-d8cf-863a-903836dddc18",
  "kind": "theorem",
  "lexical_name": "lift_eps",
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
  "slug": "lift-eps--16afa99116fc804edfb6c7ff",
  "source": {
    "blob": "22f46dfc4701325f54091186c7b7cf1278b0454f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16afa99116fc804edfb6c7ffb1230d55d30547daa6d339162f0b28c2b43a7ed0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd28d157-27c7-d8cf-863a-903836dddc18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_eps : lift ⟨ε, eps_mul_eps⟩ = AlgHom.id R R[ε] :=
  algHom_ext <| lift_apply_eps _
#align dual_number.lift_eps DualNumber.lift_eps

end DualNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DualNumber/Variant49eec8480cf65450fdd3ad4122f1403187daa0fb4d8a08d3658638a00f3e50bc.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f46dfc4701325f54091186c7b7cf1278b0454f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
