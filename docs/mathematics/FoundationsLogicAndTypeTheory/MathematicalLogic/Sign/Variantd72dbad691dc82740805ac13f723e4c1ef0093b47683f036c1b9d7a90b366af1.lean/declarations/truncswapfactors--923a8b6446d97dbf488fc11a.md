# truncSwapFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba22717772a44ca21ae794dd7308edf62b0f4803f982b04df555c9ea455f9d2f",
  "kind": "def",
  "lexical_name": "truncSwapFactors",
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
  "slug": "truncswapfactors--923a8b6446d97dbf488fc11a",
  "source": {
    "blob": "0dbd8f0cf4feaba620e7e66006c7e667527c2852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:923a8b6446d97dbf488fc11a3929fa2d9ca591a9044efed39fd64a739ec51582",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba22717772a44ca21ae794dd7308edf62b0f4803f982b04df555c9ea455f9d2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def truncSwapFactors [Fintype α] (f : Perm α) :
    Trunc { l : List (Perm α) // l.prod = f ∧ ∀ g ∈ l, IsSwap g } :=
  Quotient.recOnSubsingleton (@univ α _).1 (fun l h => Trunc.mk (swapFactorsAux l f (h _)))
    (show ∀ x, f x ≠ x → x ∈ (@univ α _).1 from fun _ _ => mem_univ _)

/-- An induction principle for permutations. If `P` holds for the identity permutation, and
is preserved under composition with a non-trivial swap, then `P` holds for all permutations. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantd72dbad691dc82740805ac13f723e4c1ef0093b47683f036c1b9d7a90b366af1.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dbd8f0cf4feaba620e7e66006c7e667527c2852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
