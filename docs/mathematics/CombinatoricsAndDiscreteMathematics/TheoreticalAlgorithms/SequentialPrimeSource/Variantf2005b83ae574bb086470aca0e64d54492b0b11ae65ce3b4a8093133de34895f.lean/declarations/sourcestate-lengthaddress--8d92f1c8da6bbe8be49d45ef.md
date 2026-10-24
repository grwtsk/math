# sourceState_lengthAddress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c353e32-8b1a-55ae-770e-71a45cddda68",
  "kind": "theorem",
  "lexical_name": "sourceState_lengthAddress",
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
  "slug": "sourcestate-lengthaddress--8d92f1c8da6bbe8be49d45ef",
  "source": {
    "blob": "cb43f6e67ffffc02ed4b6b550c69a44a190f5890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 319,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d92f1c8da6bbe8be49d45ef4fa2c53af2434b30ada1d713a7df578aa5d0bc02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c353e32-8b1a-55ae-770e-71a45cddda68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceState_lengthAddress
    (source : CanonicalSource)
    (occurrence : Nat) :
    sourceState source (lengthAddress occurrence) =
      decide (occurrence < source.utf8.size) := by
  classical
  unfold sourceState lengthAddress
  dsimp only
  rw [dif_neg (fun equality => byte_ne_length equality.symm)]
  rw [dif_pos rfl]
  have coordinateZero := coordinateOfIndex_mixedRadix
    lengthSpecification 0 (by rw [lengthSpecification_cardinality]; omega)
  simp [coordinateZero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb43f6e67ffffc02ed4b6b550c69a44a190f5890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
