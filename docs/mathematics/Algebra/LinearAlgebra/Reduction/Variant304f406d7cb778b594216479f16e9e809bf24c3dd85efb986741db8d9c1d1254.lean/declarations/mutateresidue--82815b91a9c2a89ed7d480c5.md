# mutateResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:189da1affec24fd39714e498737c6f2d6fdcec400c346dac5c19c2f4958d7f04",
  "kind": "def",
  "lexical_name": "mutateResidue",
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
  "slug": "mutateresidue--82815b91a9c2a89ed7d480c5",
  "source": {
    "blob": "072fcc40a94bef3129f152b0f3ab6263d92ac1eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 12,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82815b91a9c2a89ed7d480c5de3ef4ab3ea585188f18d94841c0568653c0bb0c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:189da1affec24fd39714e498737c6f2d6fdcec400c346dac5c19c2f4958d7f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mutateResidue {n : ℕ} (m : ℕ) (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n)
    (x : Fin n → ZMod m) : Fin n → ZMod m :=
  fun j => if j = i then -x i + ∑ k ∈ Finset.univ.erase i, (A i k : ZMod m) * x k
    else x j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072fcc40a94bef3129f152b0f3ab6263d92ac1eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
