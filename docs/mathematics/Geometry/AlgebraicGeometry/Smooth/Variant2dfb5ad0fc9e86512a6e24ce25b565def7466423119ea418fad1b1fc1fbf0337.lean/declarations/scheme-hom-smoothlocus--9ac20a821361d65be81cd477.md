# Scheme.Hom.smoothLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b8721a30a61f0e1421a67f44ad5a064068139c7c6a6b1b1809033d9216c906a",
  "kind": "def",
  "lexical_name": "Scheme.Hom.smoothLocus",
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
  "slug": "scheme-hom-smoothlocus--9ac20a821361d65be81cd477",
  "source": {
    "blob": "6f7e165219b50064b861cfbcd07b005cdf3f0ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 291,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ac20a821361d65be81cd47767ca25083118e321bc9b10b8d165685e13d95ca7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b8721a30a61f0e1421a67f44ad5a064068139c7c6a6b1b1809033d9216c906a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Scheme.Hom.smoothLocus (f : X ⟶ Y) [LocallyOfFinitePresentation f] : X.Opens :=
  ⟨{ x | (f.stalkMap x).hom.FormallySmooth }, f.isOpen_smoothLocus⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f7e165219b50064b861cfbcd07b005cdf3f0ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
