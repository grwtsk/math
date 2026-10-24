# numDenCasesOn''.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f05715eff3a315fc8b10ba786e80ac443c7e019953c58b5fd4c7f5cf49249387",
  "kind": "def",
  "lexical_name": "numDenCasesOn''.",
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
  "slug": "numdencaseson--3ce0785a112860628bfb8dec",
  "source": {
    "blob": "6cfe75c22ec9c6f6ac810b97a48a74d1c4d1a932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 134,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ce0785a112860628bfb8decb380abf94643d1e7d6a0e2797ef288e39ae40df9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f05715eff3a315fc8b10ba786e80ac443c7e019953c58b5fd4c7f5cf49249387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def numDenCasesOn''.{u} {C : ℚ → Sort u} (a : ℚ)
    (H : ∀ (n : ℤ) (d : ℕ) (nz red), C (mk' n d nz red)) : C a :=
  numDenCasesOn a fun n d h h' ↦ by rw [← mk_eq_divInt _ _ h.ne' h']; exact H n d h.ne' _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cfe75c22ec9c6f6ac810b97a48a74d1c4d1a932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
