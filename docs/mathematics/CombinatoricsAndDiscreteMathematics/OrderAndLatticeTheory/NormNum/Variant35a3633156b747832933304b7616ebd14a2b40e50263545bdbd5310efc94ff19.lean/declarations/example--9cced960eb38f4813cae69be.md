# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4974d6e97cb951ed73ccd7f1642655206598994ab1fecc324035c1ea9ea310ff",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--9cced960eb38f4813cae69be",
  "source": {
    "blob": "f4390d52222f83eff625949cc122cff0f9d87d02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 573,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NormNum/Variant35a3633156b747832933304b7616ebd14a2b40e50263545bdbd5310efc94ff19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cced960eb38f4813cae69bef073de866f1c15c55658958cc031c44ccb9b662d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NormNum/Variant35a3633156b747832933304b7616ebd14a2b40e50263545bdbd5310efc94ff19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4974d6e97cb951ed73ccd7f1642655206598994ab1fecc324035c1ea9ea310ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : 3 ^ 3 + 4 = 31 := by norm_num1

attribute [-norm_num] Mathlib.Meta.NormNum.evalPow
/-
  If run, the following commented line of code will produce the error
  "'Mathlib.Meta.NormNum.evalPow' does not have [norm_num] attribute".

  This checks that the `norm_num` attribute is indeed considered to be erased from
  `Mathlib.Meta.NormNum.evalPow` in this scope.
-/
-- attribute [-norm_num] Mathlib.Meta.NormNum.evalPow

end norm_num_erase

-- auto gen tests
variable [Field α] [LinearOrder α] [IsStrictOrderedRing α]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NormNum/Variant35a3633156b747832933304b7616ebd14a2b40e50263545bdbd5310efc94ff19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/NormNum/Variant35a3633156b747832933304b7616ebd14a2b40e50263545bdbd5310efc94ff19.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4390d52222f83eff625949cc122cff0f9d87d02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
