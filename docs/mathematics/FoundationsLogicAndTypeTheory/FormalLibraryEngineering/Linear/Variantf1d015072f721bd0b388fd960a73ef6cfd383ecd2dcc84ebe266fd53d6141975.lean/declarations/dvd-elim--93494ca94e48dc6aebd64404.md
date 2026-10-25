# dvd_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43335f1fbd938bca5e0516fa91279a56144dc3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 876,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c8db188-999a-a7a4-d1e0-da2f71c0ff7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:330753bf-3286-4144-45dd-0263673d4bb4",
  "kind": "theorem",
  "lexical_name": "dvd_elim",
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
  "slug": "dvd-elim--93494ca94e48dc6aebd64404",
  "source": {
    "blob": "c43335f1fbd938bca5e0516fa91279a56144dc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 883,
    "line": 876,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93494ca94e48dc6aebd64404f78bece9b2ff8aa114d00ef7e456caafb5e0cefa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:330753bf-3286-4144-45dd-0263673d4bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 876–883.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_elim (ctx : Context) (k₁ : Int) (p₁ : Poly) (k₂ : Int) (p₂ : Poly)
    : dvd_elim_cert k₁ p₁ k₂ p₂ → k₁ ∣ p₁.denote' ctx → k₂ ∣ p₂.denote' ctx := by
  rcases p₁ <;> simp [dvd_elim_cert]
  rename_i a _ p
  intro _ _; subst k₂ p₂
  rw [Int.add_comm]
  apply dvd_gcd_of_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean#L876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43335f1fbd938bca5e0516fa91279a56144dc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
