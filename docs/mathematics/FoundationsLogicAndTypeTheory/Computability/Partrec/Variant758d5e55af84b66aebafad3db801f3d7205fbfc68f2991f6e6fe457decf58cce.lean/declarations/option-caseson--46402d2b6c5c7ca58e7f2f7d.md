# option_casesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6760b4d7-a3be-54ba-b5bb-664bfdb3c1ee",
  "kind": "theorem",
  "lexical_name": "option_casesOn",
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
  "slug": "option-caseson--46402d2b6c5c7ca58e7f2f7d",
  "source": {
    "blob": "68dd6b3a579250074f3126bf297862a324e8950b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 619,
    "line": 613,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46402d2b6c5c7ca58e7f2f7d99fcb6fb441ff4779a1c95ff5e5bd9a87d0e2ab4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6760b4d7-a3be-54ba-b5bb-664bfdb3c1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–619.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem option_casesOn {o : α → Option β} {f : α → σ} {g : α → β → σ} (ho : Computable o)
    (hf : Computable f) (hg : Computable₂ g) :
    @Computable _ σ _ _ fun a => Option.casesOn (o a) (f a) (g a) :=
  option_some_iff.1 <|
    (nat_casesOn (encode_iff.2 ho) (option_some_iff.2 hf) (map_decode_iff.2 hg)).of_eq fun a => by
      cases o a <;> simp [encodek]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant758d5e55af84b66aebafad3db801f3d7205fbfc68f2991f6e6fe457decf58cce.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68dd6b3a579250074f3126bf297862a324e8950b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
