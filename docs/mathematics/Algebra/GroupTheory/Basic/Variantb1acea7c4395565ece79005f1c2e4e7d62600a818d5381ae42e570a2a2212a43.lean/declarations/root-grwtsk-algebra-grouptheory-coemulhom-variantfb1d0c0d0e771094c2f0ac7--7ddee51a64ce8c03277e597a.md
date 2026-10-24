# _root_.GRWTSK.Algebra.GroupTheory.CoeMulHom.Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.MulEquiv.withOneCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07c2093ff1917550e444764fa3a10bf1f204c27230a33edfc45eadb352d2b094",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.CoeMulHom.Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.MulEquiv.withOneCongr",
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
  "slug": "root-grwtsk-algebra-grouptheory-coemulhom-variantfb1d0c0d0e771094c2f0ac7--7ddee51a64ce8c03277e597a",
  "source": {
    "blob": "2bc806116eb68f48803d344ab80a00992a4c55ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 114,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ddee51a64ce8c03277e597a13ad4c203fd19cccdc524207c0a0400451422f35",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07c2093ff1917550e444764fa3a10bf1f204c27230a33edfc45eadb352d2b094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.GroupTheory.CoeMulHom.Variantfb1d0c0d0e771094c2f0ac7f0da76c0e65fe75e23d74e4dba4ae8527f8c5656f.MulEquiv.withOneCongr (e : α ≃* β) : WithOne α ≃* WithOne β :=
  { map e.toMulHom with
    toFun := map e.toMulHom, invFun := map e.symm.toMulHom,
    left_inv := (by induction · <;> simp)
    right_inv := (by induction · <;> simp) }

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bc806116eb68f48803d344ab80a00992a4c55ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
