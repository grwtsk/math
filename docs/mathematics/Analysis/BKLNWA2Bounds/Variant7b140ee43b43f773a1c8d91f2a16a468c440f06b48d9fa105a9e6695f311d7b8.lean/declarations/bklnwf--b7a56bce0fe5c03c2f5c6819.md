# bklnwF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:777ab088557ff2e0d563299a8b65b8dda8b7d9bcd8ccea4eb5fdb0fef74fe1d7",
  "kind": "def",
  "lexical_name": "bklnwF",
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
  "slug": "bklnwf--b7a56bce0fe5c03c2f5c6819",
  "source": {
    "blob": "99f9d41f029d14e0fe5a69f74cf039badb792eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 58,
    "path": "GRWTSK/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7a56bce0fe5c03c2f5c68190c9a82cbfb594943f5f33353b8e166035fdb3a3b",
  "verification": {
    "reference": "docs/verification/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:777ab088557ff2e0d563299a8b65b8dda8b7d9bcd8ccea4eb5fdb0fef74fe1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bklnwF (x : ℝ) (N : Nat) : ℝ :=
  ∑ k ∈ Finset.Icc 3 N, x ^ ((1 : ℝ) / k - 1 / 3)

/-! ### Floor Lemmas -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BKLNWA2Bounds/Variant7b140ee43b43f773a1c8d91f2a16a468c440f06b48d9fa105a9e6695f311d7b8.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99f9d41f029d14e0fe5a69f74cf039badb792eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
