# IsEuler.toEuler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74c89a57fd68dc6e45f6e3dc5e910ed5daddc010",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e8700b0-ecbb-4f67-65c9-0181d081129d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb3bb7e3-f188-767c-7493-d29443707a19",
  "kind": "theorem",
  "lexical_name": "IsEuler.toEuler",
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
  "slug": "iseuler-toeuler--c9b69a4e9f2066a05201b126",
  "source": {
    "blob": "74c89a57fd68dc6e45f6e3dc5e910ed5daddc010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 247,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9b69a4e9f2066a05201b1268c113049e96d2e494d6d94c7c1fcd4f063765f5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb3bb7e3-f188-767c-7493-d29443707a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsEuler.toEuler (hg : g.IsEuler) : g.toEuler = g := by
  obtain ⟨ρ, hρ⟩ := hg.exists_euler
  rw [← hρ]
  ext n : 2
  · rfl
  match n with
  | 0 =>
    rw [toEuler_s_zero, euler]
    rcases hρ₀ : ρ.get? 0 with _ | _ <;> simp [hρ₀]
  | n' + 1 =>
    rcases Decidable.em <| ρ.TerminatedAt (n' + 1) with hρₙ | hρₙ
    · rw [← terminatedAt_euler (h := g.h)] at hρₙ
      rw [hρₙ]
      rw [← terminatedAt_toEuler] at hρₙ
      rw [hρₙ]
    · rw [toEuler_s_succ]
      obtain ⟨a, g_n_succ_eq⟩ : ∃ a, (euler g.h ρ).s.get? (n' + 1) = some ⟨-a, 1 + a⟩ :=
        exists_euler_s_of_not_terminatedAt_succ hρₙ
      simp [g_n_succ_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74c89a57fd68dc6e45f6e3dc5e910ed5daddc010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
