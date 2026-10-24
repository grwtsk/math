# ofCertified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e96089dcf8fa7df30ae1cee4567956fd5db897b2cb7025417527d6ff4b641fb",
  "kind": "def",
  "lexical_name": "ofCertified",
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
  "slug": "ofcertified--b39d143b6c7216ecca45f690",
  "source": {
    "blob": "49dde925f88b40b584b090b9ce46113e79a23046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b39d143b6c7216ecca45f6908c05c9bdc5c21a8cae3ae4e3d710ab74ebea2652",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e96089dcf8fa7df30ae1cee4567956fd5db897b2cb7025417527d6ff4b641fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofCertified
    (width : Nat) (encode : X ≃ Fin width)
    (source : CertifiedInvolution X) : BinaryInvolutionProjection X where
  width := width
  encode := encode
  source := source
  actionMatrix i j := decide (encode (source.act (encode.symm j)) = i)
  action_spec i j := by simp
  f2Matrix i j := if decide (encode (source.act (encode.symm j)) = i) then 1 else 0
  f2_spec _ _ := rfl

variable (P : BinaryInvolutionProjection X)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49dde925f88b40b584b090b9ce46113e79a23046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
