# toFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be457ca597e717764071a342d33460745906361d6a2b16d728a75fabd9c7bfa7",
  "kind": "def",
  "lexical_name": "toFinsupp",
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
  "slug": "tofinsupp--be9d42616b66da1a1ad28210",
  "source": {
    "blob": "bc656942c6e385c97d1f73359a305b9beb2f6815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be9d42616b66da1a1ad282105b42029633c2125ed62e8491111c4ee1b28f1d6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be457ca597e717764071a342d33460745906361d6a2b16d728a75fabd9c7bfa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFinsupp : Multiset α ≃+ (α →₀ ℕ) where
  toFun s := ⟨s.toFinset, fun a => s.count a, fun a => by simp⟩
  invFun f := Finsupp.toMultiset f
  map_add' _ _ := Finsupp.ext fun _ => count_add _ _ _
  right_inv f :=
    Finsupp.ext fun a => by
      simp only [Finsupp.toMultiset_apply, Finsupp.sum, Multiset.count_sum',
        Multiset.count_singleton, mul_boole, Finsupp.coe_mk, Finsupp.mem_support_iff,
        Multiset.count_nsmul, Finset.sum_ite_eq, ite_not, ite_eq_right_iff]
      exact Eq.symm
  left_inv s := by simp only [Finsupp.toMultiset_apply, Finsupp.sum, Finsupp.coe_mk,
    Multiset.toFinset_sum_count_nsmul_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant6586362f2e85eef2ced3f024e182453d944c72e733a779d897a9fbe693a06fe0.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc656942c6e385c97d1f73359a305b9beb2f6815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
