# orderIsoIooNegOneOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1188a44d0b06c279589b6b9539966ccc2539d606b436c5f1920250ba8523b92d",
  "kind": "def",
  "lexical_name": "orderIsoIooNegOneOne",
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
  "slug": "orderisoioonegoneone--84fb319d7025c3da96cf3f92",
  "source": {
    "blob": "0d44e663f5f51e41f4a3cae572ce999be77f36b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsoIoo/Variantc3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84fb319d7025c3da96cf3f92f3555cbcdd340fe1134fca6ab04ec6847b87ee56",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsoIoo/Variantc3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1188a44d0b06c279589b6b9539966ccc2539d606b436c5f1920250ba8523b92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderIsoIooNegOneOne (k : Type*) [Field k] [LinearOrder k] [IsStrictOrderedRing k] :
    k ≃o Ioo (-1 : k) 1 := by
  refine StrictMono.orderIsoOfRightInverse ?_ ?_ (fun x ↦ x / (1 - |↑x|)) ?_
  · refine codRestrict (fun x ↦ x / (1 + |x|)) _ fun x ↦ abs_lt.1 ?_
    have H : 0 < 1 + |x| := (abs_nonneg x).trans_lt (lt_one_add _)
    calc
      |x / (1 + |x|)| = |x| / (1 + |x|) := by rw [abs_div, abs_of_pos H]
      _ < 1 := (div_lt_one H).2 (lt_one_add _)
  · refine (strictMono_of_odd_strictMonoOn_nonneg ?_ ?_).codRestrict _
    · intro x
      simp only [abs_neg, neg_div]
    · rintro x (hx : 0 ≤ x) y (hy : 0 ≤ y) hxy
      simp [abs_of_nonneg, mul_add, mul_comm x y, div_lt_div_iff₀, hx.trans_lt (lt_one_add _),
        hy.trans_lt (lt_one_add _), *]
  · refine fun x ↦ Subtype.ext ?_
    have : 0 < 1 - |(x : k)| := sub_pos.2 (abs_lt.2 x.2)
    field_simp [abs_div, this.ne', abs_of_pos this]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsoIoo/Variantc3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsoIoo/Variantc3aa452cf08a8f3412a86d01ab588742dda59cd82ae8c6d6e158e6bc58473a91.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d44e663f5f51e41f4a3cae572ce999be77f36b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
