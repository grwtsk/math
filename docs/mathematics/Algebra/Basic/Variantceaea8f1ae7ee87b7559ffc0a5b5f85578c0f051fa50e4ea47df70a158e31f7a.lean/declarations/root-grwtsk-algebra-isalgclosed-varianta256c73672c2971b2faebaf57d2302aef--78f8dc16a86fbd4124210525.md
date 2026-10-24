# _root_.GRWTSK.Algebra.IsAlgClosed.Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.Algebra.adjoin.liftSingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d856864c41ebb020725d27e37ea6d63cdd79bf09f9d0d9781de6770c55925b6",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.IsAlgClosed.Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.Algebra.adjoin.liftSingleton",
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
  "slug": "root-grwtsk-algebra-isalgclosed-varianta256c73672c2971b2faebaf57d2302aef--78f8dc16a86fbd4124210525",
  "source": {
    "blob": "d05c2dddcddcc926e98a56952b70c6dbbde87a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 305,
    "path": "GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78f8dc16a86fbd41242105250fbce9b3e63c05ce10e8edaee5f40d696677602b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d856864c41ebb020725d27e37ea6d63cdd79bf09f9d0d9781de6770c55925b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Algebra.IsAlgClosed.Varianta256c73672c2971b2faebaf57d2302aefecfbbac758fea93b22c423887b5e277.Algebra.adjoin.liftSingleton (R : Type*) [Field R] {S T : Type*}
  [CommRing S] [CommRing T] [Algebra R S] [Algebra R T]
  (x : S) (y : T) (h : aeval y (minpoly R x) = 0) :
  Algebra.adjoin R {x} →ₐ[R] T :=
AlgHom.comp
  (AdjoinRoot.liftHom _ y h)
  (AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly R x).toAlgHom

-- porting note: this was much faster in lean 3
set_option maxHeartbeats 800000 in
set_option synthInstance.maxHeartbeats 400000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantceaea8f1ae7ee87b7559ffc0a5b5f85578c0f051fa50e4ea47df70a158e31f7a.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d05c2dddcddcc926e98a56952b70c6dbbde87a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
