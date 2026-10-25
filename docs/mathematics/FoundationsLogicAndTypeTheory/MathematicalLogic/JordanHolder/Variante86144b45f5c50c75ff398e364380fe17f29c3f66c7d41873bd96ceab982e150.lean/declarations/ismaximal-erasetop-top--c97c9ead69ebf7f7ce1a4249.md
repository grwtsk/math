# isMaximal_eraseTop_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:228072a5-eb77-469b-339d-0b0a9a43ec60",
  "kind": "theorem",
  "lexical_name": "isMaximal_eraseTop_top",
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
  "slug": "ismaximal-erasetop-top--c97c9ead69ebf7f7ce1a4249",
  "source": {
    "blob": "cb416f0837ba6e3ce21c1bec0d61226067f19f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 448,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c97c9ead69ebf7f7ce1a4249f29ecf0a6d2f7c72a463b3dab4e74039b2a39e48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:228072a5-eb77-469b-339d-0b0a9a43ec60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMaximal_eraseTop_top {s : CompositionSeries X} (h : 0 < s.length) :
    IsMaximal s.eraseTop.top s.top := by
  have : s.length - 1 + 1 = s.length := by
    conv_rhs => rw [← Nat.succ_sub_one s.length]; rw [Nat.succ_sub h]
  rw [top_eraseTop, top]
  convert s.step ⟨s.length - 1, Nat.sub_lt h zero_lt_one⟩; ext; simp [this]
#align composition_series.is_maximal_erase_top_top CompositionSeries.isMaximal_eraseTop_top

section FinLemmas

-- TODO: move these to `VecNotation` and rename them to better describe their statement
variable {α : Type*} {m n : ℕ} (a : Fin m.succ → α) (b : Fin n.succ → α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variante86144b45f5c50c75ff398e364380fe17f29c3f66c7d41873bd96ceab982e150.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb416f0837ba6e3ce21c1bec0d61226067f19f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
