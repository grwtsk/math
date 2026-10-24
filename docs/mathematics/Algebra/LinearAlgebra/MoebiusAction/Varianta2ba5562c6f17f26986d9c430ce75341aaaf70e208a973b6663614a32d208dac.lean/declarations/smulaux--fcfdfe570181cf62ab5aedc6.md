# smulAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dab43a0024ed0fdb7ffd15011e70381df211618cd81d68f9f7704e7eb4382b13",
  "kind": "def",
  "lexical_name": "smulAux",
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
  "slug": "smulaux--fcfdfe570181cf62ab5aedc6",
  "source": {
    "blob": "22daf53a0fd50f501b9f8b554564291fc3c8fb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 163,
    "path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcfdfe570181cf62ab5aedc6e5538c7c298c10614c739cded0dbd6417ef6e53b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dab43a0024ed0fdb7ffd15011e70381df211618cd81d68f9f7704e7eb4382b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smulAux (g : GL (Fin 2) ℝ) (z : ℍ) : ℍ :=
  mk (smulAux' g z) <| by
    rw [smulAux'_im]
    exact div_pos (mul_pos (abs_pos.mpr g.det.ne_zero) z.im_pos) (normSq_denom_pos _ z.im_ne_zero)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Varianta2ba5562c6f17f26986d9c430ce75341aaaf70e208a973b6663614a32d208dac.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22daf53a0fd50f501b9f8b554564291fc3c8fb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
