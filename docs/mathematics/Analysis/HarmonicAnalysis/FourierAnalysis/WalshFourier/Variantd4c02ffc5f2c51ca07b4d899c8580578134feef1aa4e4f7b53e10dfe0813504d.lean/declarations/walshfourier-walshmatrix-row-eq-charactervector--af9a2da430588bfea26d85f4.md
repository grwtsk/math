# WalshFourier.walshMatrix_row_eq_characterVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42dfb23621399c04122daeaf3d9b46034237b767",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1253c755-7d8d-2439-3490-8673fd4e471a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ba7662a-32bc-3b4b-6651-14d78c43fd36",
  "kind": "theorem",
  "lexical_name": "WalshFourier.walshMatrix_row_eq_characterVector",
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
  "slug": "walshfourier-walshmatrix-row-eq-charactervector--af9a2da430588bfea26d85f4",
  "source": {
    "blob": "42dfb23621399c04122daeaf3d9b46034237b767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 239,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af9a2da430588bfea26d85f4e1edcc11da3d03030a4fe18ec495c1ac8d19542e",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ba7662a-32bc-3b4b-6651-14d78c43fd36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WalshFourier.walshMatrix_row_eq_characterVector
    (n : Nat)
    (S : Fin (2 ^ n)) :
    (fun x => WalshFourier.walshMatrix n S x) =
      WalshFourier.characterVector (WalshFourier.frequencyOfIndex n S) := by
  rfl

/--
The spectral coordinate is the normalized projection of the evaluation vector
onto the Walsh character axis.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WalshFourier/Variantd4c02ffc5f2c51ca07b4d899c8580578134feef1aa4e4f7b53e10dfe0813504d.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42dfb23621399c04122daeaf3d9b46034237b767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
