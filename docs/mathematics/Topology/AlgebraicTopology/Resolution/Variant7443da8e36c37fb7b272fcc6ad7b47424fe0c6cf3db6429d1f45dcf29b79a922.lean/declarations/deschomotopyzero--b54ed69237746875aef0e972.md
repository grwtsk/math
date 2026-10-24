# descHomotopyZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbb6aa63b0b0f7067d83f2de9fc74a32d59285bed6ce2e568710644c619eeec4",
  "kind": "def",
  "lexical_name": "descHomotopyZero",
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
  "slug": "deschomotopyzero--b54ed69237746875aef0e972",
  "source": {
    "blob": "53d6753f1f508ffbe2c5450ff7de59e8e71ba6f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 154,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b54ed69237746875aef0e972392db334f24360439720f8199d68927600f5f6bb",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbb6aa63b0b0f7067d83f2de9fc74a32d59285bed6ce2e568710644c619eeec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def descHomotopyZero {Y Z : C} {I : InjectiveResolution Y} {J : InjectiveResolution Z}
    (f : I.cocomplex ⟶ J.cocomplex) (comm : I.ι ≫ f = 0) : Homotopy f 0 :=
  Homotopy.mkCoinductive _ (descHomotopyZeroZero f comm) (by simp)
    (descHomotopyZeroOne f comm) (by simp) (fun n ⟨g, g', w⟩ =>
    ⟨descHomotopyZeroSucc f n g g' (by simp only [w, add_comm]), by simp⟩)

/-- Two descents of the same morphism are homotopic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7443da8e36c37fb7b272fcc6ad7b47424fe0c6cf3db6429d1f45dcf29b79a922.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d6753f1f508ffbe2c5450ff7de59e8e71ba6f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
