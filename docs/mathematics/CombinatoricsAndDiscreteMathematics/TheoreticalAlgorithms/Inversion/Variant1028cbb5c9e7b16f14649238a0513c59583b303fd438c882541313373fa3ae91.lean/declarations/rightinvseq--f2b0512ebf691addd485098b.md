# rightInvSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19ceb0c58f498f1b539441c3b0043e4515f6979577432513b1796f95a55322b3",
  "kind": "def",
  "lexical_name": "rightInvSeq",
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
  "slug": "rightinvseq--f2b0512ebf691addd485098b",
  "source": {
    "blob": "7d25d1d0f45fa08887ddef328899f9559f62993c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2b0512ebf691addd485098b09eaa69e360a42119585affcbdec989c8aaa2d31",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19ceb0c58f498f1b539441c3b0043e4515f6979577432513b1796f95a55322b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightInvSeq (ω : List B) : List W :=
  match ω with
  | []          => []
  | i :: ω      => (π ω)⁻¹ * (s i) * (π ω) :: rightInvSeq ω

/-- The left inversion sequence of `ω`. The left inversion sequence of a word
$s_{i_1} \cdots s_{i_\ell}$ is the sequence
$$s_{i_1}, s_{i_1}s_{i_2}s_{i_1}, s_{i_1}s_{i_2}s_{i_3}s_{i_2}s_{i_1}, \ldots,
    s_{i_1}\cdots s_{i_\ell}\cdots s_{i_1}.$$
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Inversion/Variant1028cbb5c9e7b16f14649238a0513c59583b303fd438c882541313373fa3ae91.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d25d1d0f45fa08887ddef328899f9559f62993c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
