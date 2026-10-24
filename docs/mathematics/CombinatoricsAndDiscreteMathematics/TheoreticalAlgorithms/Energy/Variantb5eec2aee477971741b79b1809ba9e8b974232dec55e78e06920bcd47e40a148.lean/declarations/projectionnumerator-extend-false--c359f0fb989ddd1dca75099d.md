# projectionNumerator_extend_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34ecbfae-2464-84d4-5fe2-37a5d4229168",
  "kind": "theorem",
  "lexical_name": "projectionNumerator_extend_false",
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
  "slug": "projectionnumerator-extend-false--c359f0fb989ddd1dca75099d",
  "source": {
    "blob": "02acc31bfcf9bf020226f73019cde79e51a61121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c359f0fb989ddd1dca75099d1c3f25487cc14622d4490a23a03ce4b64764a3df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34ecbfae-2464-84d4-5fe2-37a5d4229168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem projectionNumerator_extend_false {n : Nat}
    (f : WalshFourier.Function (n + 1))
    (S : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator f (Hypercube.extend S false) =
      WalshFourier.projectionNumerator (sumSection f) S := by
  unfold WalshFourier.projectionNumerator WalshFourier.innerProduct
    WalshFourier.sumSection WalshFourier.falseSection WalshFourier.trueSection
  simp only [Hypercube.vertices, List.map_flatMap, List.map_cons, List.map_nil]
  rw [ListTools.sumInt_flatMap_pair]
  apply ListTools.sumInt_map_congr
  intro x
  simp [WalshFourier.characterFunction, character_extend, Int.add_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02acc31bfcf9bf020226f73019cde79e51a61121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
