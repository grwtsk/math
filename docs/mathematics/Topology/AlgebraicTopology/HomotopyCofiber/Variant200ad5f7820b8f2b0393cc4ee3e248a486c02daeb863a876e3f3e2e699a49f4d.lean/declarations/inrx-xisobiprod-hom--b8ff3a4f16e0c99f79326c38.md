# inrX_XIsoBiprod_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e25261ec-fd90-d86e-6b39-1bcfd6292804",
  "kind": "lemma",
  "lexical_name": "inrX_XIsoBiprod_hom",
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
  "slug": "inrx-xisobiprod-hom--b8ff3a4f16e0c99f79326c38",
  "source": {
    "blob": "0b3079aab9fc47cc0e38d97c8da9ec3261213f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 170,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8ff3a4f16e0c99f79326c380d7286e30e37f0cad43941124e6bf5c55cf2bf6c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e25261ec-fd90-d86e-6b39-1bcfd6292804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inrX_XIsoBiprod_hom (i j : ι) (hij : c.Rel j i) :
    haveI := HasHomotopyCofiber.hasBinaryBiproduct φ _ _ hij
    inrX φ j ≫ (XIsoBiprod φ j i hij).hom = biprod.inr := by
  obtain rfl := c.next_eq' hij
  have := HasHomotopyCofiber.hasBinaryBiproduct φ _ _ hij
  simp [inrX, XIsoBiprod, dite_eq_left hij]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b3079aab9fc47cc0e38d97c8da9ec3261213f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
