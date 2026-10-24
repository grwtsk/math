# ofSimplex₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d9ddd387be00f7b64833f98519f9edaec4f7a621d7cc3121211d78198856628",
  "kind": "def",
  "lexical_name": "ofSimplex₀",
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
  "slug": "ofsimplex--ab339e6ce201d179c3a9dcb5",
  "source": {
    "blob": "79b91540835f885ee3fc62103de4f3c72fc01f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab339e6ce201d179c3a9dcb59b362136f6d2b76f251bd020554d8a232a2f6687",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d9ddd387be00f7b64833f98519f9edaec4f7a621d7cc3121211d78198856628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSimplex₀ (f : X ⟶ Y) (x : X _⦋0⦌) (y : Y _⦋0⦌) (h : f.app _ x = y) :
    RelativeMorphism (.ofSimplex x) (.ofSimplex y)
      (SSet.const ⟨y, Subcomplex.mem_ofSimplex_obj y⟩) where
  map := f

variable {A B φ} (f g : RelativeMorphism A B φ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b91540835f885ee3fc62103de4f3c72fc01f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
