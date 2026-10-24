# _root_.GRWTSK.Algebra.AlgHomIsArithFrobAt.Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.arithFrobAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d7c6f3124fff4b54b0ca1e1edf5ba4597a0944be7bf7e4e7df41375ab962faa",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.AlgHomIsArithFrobAt.Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.arithFrobAt",
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
  "slug": "root-grwtsk-algebra-alghomisarithfrobat-variant522663163f9ffaedbeb09cc3d--1846e27ae33ebf6e150d2285",
  "source": {
    "blob": "7bb04111113b37a40f991b981a834305d3e1e25f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 261,
    "path": "GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1846e27ae33ebf6e150d2285fd4a7dd915b9d72b9b8cb2b8450ff3a4dbacf5d2",
  "verification": {
    "reference": "docs/verification/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d7c6f3124fff4b54b0ca1e1edf5ba4597a0944be7bf7e4e7df41375ab962faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.AlgHomIsArithFrobAt.Variant522663163f9ffaedbeb09cc3da172de68822083d5944a7b837af5e1afd16d33e.arithFrobAt [Q.IsPrime] [Finite (S ⧸ Q)] : G :=
  (exists_primesOver_isConj S G (Q.under R)
    ⟨⟨Q, ‹_›, ⟨rfl⟩⟩, ‹Finite (S ⧸ Q)›⟩).choose ⟨Q, ‹_›, ⟨rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Frobenius/Variant725ca1c8edbabba99f556263f9aa6e81edd37d315dfae4193ddd84506e8caf36.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bb04111113b37a40f991b981a834305d3e1e25f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
