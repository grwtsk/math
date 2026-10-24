# compatible_iff_translations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee24ab20-10e6-9ac7-7c6a-ba3250d44061",
  "kind": "theorem",
  "lexical_name": "compatible_iff_translations",
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
  "slug": "compatible-iff-translations--776dce2f2ffdc2030505d86e",
  "source": {
    "blob": "2f3de6fcc20e7c6a6e062bf6725ade6980ad3d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 172,
    "path": "GRWTSK/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:776dce2f2ffdc2030505d86ec7b1823205c8aa45d108f2fbf06449c0898f1889",
  "verification": {
    "reference": "docs/verification/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee24ab20-10e6-9ac7-7c6a-ba3250d44061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatible_iff_translations {Carrier : Type} (alg : Algebra Carrier)
    (rel : Setoid Carrier) :
    Compatible alg rel ↔ ∀ (index : Fin alg.numOps) (coord : Fin (alg.arity index))
      (inputs : Fin (alg.arity index) → Carrier) (left right : Carrier), rel left right →
      rel (translation alg index coord inputs left) (translation alg index coord inputs right) := by
  constructor
  · intro compatible index coord inputs left right related
    exact translation_preserves ⟨rel, compatible⟩ index coord inputs related
  · intro stable index left right related
    exact relation_map_of_updates rel (alg.op index) (stable index) left right related

end FiniteCongruence

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f3de6fcc20e7c6a6e062bf6725ade6980ad3d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
