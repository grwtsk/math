# binaryMatrixToBitWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:212c9ca92327688b18922a1d947608c969f28abd111cd729377dc3bf316a4534",
  "kind": "def",
  "lexical_name": "binaryMatrixToBitWord",
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
  "slug": "binarymatrixtobitword--ca949825190fa13243af05e1",
  "source": {
    "blob": "1cd910a735e7283eccc57a900d22942c9beba223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca949825190fa13243af05e10948ae60bb187ffac1f7200ed2eff4c10534a3fc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:212c9ca92327688b18922a1d947608c969f28abd111cd729377dc3bf316a4534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryMatrixToBitWord
    (M : Carrier.BinaryMatrix) : BitWord where
  len := M.m * M.n
  bit k :=
    if hn : M.n = 0 then
      have hlt : k.val < 0 := by
        simpa [hn] using k.isLt
      False.elim ((Nat.not_lt_zero k.val) hlt)
    else
      let row : Fin M.m :=
        ⟨k.val / M.n,
          by
            have hcomm : k.val < M.n * M.m := by
              exact Nat.lt_of_lt_of_le k.isLt (le_of_eq (Nat.mul_comm M.m M.n))
            exact Nat.div_lt_of_lt_mul hcomm⟩
      let col : Fin M.n :=
        ⟨k.val % M.n, Nat.mod_lt k.val (Nat.pos_of_ne_zero hn)⟩
      carrierBitToBit (M.get row col)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cd910a735e7283eccc57a900d22942c9beba223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
