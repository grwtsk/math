# indexEquivOfInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37157cb9d135a2f74902e66c10f9d7d63a7e4890fd6bb5ebe8f319456aa674e2",
  "kind": "def",
  "lexical_name": "indexEquivOfInv",
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
  "slug": "indexequivofinv--b263702d64965c78e18eda2b",
  "source": {
    "blob": "563c3690a5fe84f8960a7696bf0810bf6ea964c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b263702d64965c78e18eda2bf09843edf1efcbae3a8394ee7ddb551d486d80a1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37157cb9d135a2f74902e66c10f9d7d63a7e4890fd6bb5ebe8f319456aa674e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def indexEquivOfInv [Nontrivial A] [DecidableEq m] [DecidableEq n] {M : Matrix m n A}
    {M' : Matrix n m A} (hMM' : M * M' = 1) (hM'M : M' * M = 1) : m ≃ n :=
  equivOfPiLEquivPi (toLin'OfInv hMM' hM'M)
#align matrix.index_equiv_of_inv Matrix.indexEquivOfInv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant6ba0d96f87855040785013ba49c533040bb66af6033a55fd63581489013e0e76.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563c3690a5fe84f8960a7696bf0810bf6ea964c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
