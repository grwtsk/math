# directed_ptsOfPeriod_pnat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73edf861-e33e-50c5-e414-0833ae19f597",
  "kind": "theorem",
  "lexical_name": "directed_ptsOfPeriod_pnat",
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
  "slug": "directed-ptsofperiod-pnat--3792656ca217df9a164223a9",
  "source": {
    "blob": "255deefdb5b81455b21f0a6c00451c598bcd551c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 35,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3792656ca217df9a164223a975824747af6b4b12e0d2519b0d3b0c481a1c99fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73edf861-e33e-50c5-e414-0833ae19f597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directed_ptsOfPeriod_pnat (f : α → α) : Directed (· ⊆ ·) fun n : ℕ+ => ptsOfPeriod f n :=
  fun m n => ⟨m * n, fun _ hx => hx.mul_const n, fun _ hx => hx.const_mul m⟩

variable (f) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant8469a85066d09d0e4d9dae5031551140c81bb1067538ca4b32b382ee98a744bb.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `255deefdb5b81455b21f0a6c00451c598bcd551c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
