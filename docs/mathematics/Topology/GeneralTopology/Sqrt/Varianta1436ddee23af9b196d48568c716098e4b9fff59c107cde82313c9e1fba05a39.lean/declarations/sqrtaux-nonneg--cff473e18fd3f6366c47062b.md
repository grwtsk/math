# sqrtAux_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54a869250d78f589f7e64e320a92b6882f44de3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d14c7743-b05b-324a-96c2-a8d478e37a8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:839ed42a-e961-11d6-a561-8f3285403216",
  "kind": "theorem",
  "lexical_name": "sqrtAux_nonneg",
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
  "slug": "sqrtaux-nonneg--cff473e18fd3f6366c47062b",
  "source": {
    "blob": "54a869250d78f589f7e64e320a92b6882f44de3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff473e18fd3f6366c47062b8121d00ee70fcba8afa5d2c16d3c1b1d41e72a0a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:839ed42a-e961-11d6-a561-8f3285403216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtAux_nonneg (f : CauSeq ℚ abs) : ∀ i : ℕ, 0 ≤ sqrtAux f i
  | 0 => by
    rw [sqrtAux, Rat.mkRat_eq, Rat.divInt_eq_div]; apply div_nonneg <;>
      exact Int.cast_nonneg.2 (Int.ofNat_nonneg _)
  | n + 1 => le_max_left _ _
#align real.sqrt_aux_nonneg Real.sqrtAux_nonneg

/- TODO(Mario): finish the proof
theorem sqrt_aux_converges (f : cau_seq ℚ abs) : ∃ h x, 0 ≤ x ∧ x * x = max 0 (mk f) ∧
  mk ⟨sqrt_aux f, h⟩ = x :=
begin
  rcases sqrt_exists (le_max_left 0 (mk f)) with ⟨x, x0, hx⟩,
  suffices : ∃ h, mk ⟨sqrt_aux f, h⟩ = x,
  { exact this.imp (λ h e, ⟨x, x0, hx, e⟩) },
  apply of_near,

  rsuffices ⟨δ, δ0, hδ⟩ : ∃ δ > 0, ∀ i, abs (↑(sqrt_aux f i) - x) < δ / 2 ^ i,
  { intros }
end -/

-- porting note: todo: was @[pp_nodot]
/-- The square root of a real number. This returns 0 for negative inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a869250d78f589f7e64e320a92b6882f44de3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
