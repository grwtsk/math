# adjoinRootXPowSubCEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c288b5cd54488c6b6c83ab09837a4448ccf788f3ac5ddf96a76959dc4f6674c",
  "kind": "def",
  "lexical_name": "adjoinRootXPowSubCEquiv",
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
  "slug": "adjoinrootxpowsubcequiv--75d8a6e40e53114d8bfb50fe",
  "source": {
    "blob": "91c3b8660f316cc860b3d749068a787b60e747f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 342,
    "path": "GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75d8a6e40e53114d8bfb50fe40b9794960707dffad6c6a6d5b0779ff01bb9319",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c288b5cd54488c6b6c83ab09837a4448ccf788f3ac5ddf96a76959dc4f6674c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjoinRootXPowSubCEquiv (hζ : (primitiveRoots n K).Nonempty) (H : Irreducible (X ^ n - C a))
    (hα : α ^ n = algebraMap K L a) : K[n√a] ≃ₐ[K] L :=
  .ofBijective (AdjoinRoot.liftAlgHom (X ^ n - C a) (Algebra.ofId _ _) α (by simp [hα])) <| by
    have := Fact.mk H
    let := isSplittingField_AdjoinRoot_X_pow_sub_C hζ H
    refine ⟨(liftAlgHom (X ^ n - C a) _ α _).injective, ?_⟩
    rw [← AlgHom.range_eq_top, ← IsSplittingField.adjoin_rootSet _ (X ^ n - C a),
      eq_comm, Splits.adjoin_rootSet_eq_range, IsSplittingField.adjoin_rootSet]
    exact IsSplittingField.splits _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant7ef56f9621e9e8549a4954dc1f71ab43a5348cc5d425038f8a7637bbaaaf65bf.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91c3b8660f316cc860b3d749068a787b60e747f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
