# eq_lt_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75916d7f6091b36000ada9fdc4c37859979ae3a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 548,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/beca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5536feb7-55a5-4ec7-7806-eb8600ecd10e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12389020-3e35-ed02-00f0-5113d60552c2",
  "kind": "theorem",
  "lexical_name": "eq_lt_subst",
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
  "slug": "eq-lt-subst--fc76f2c9e60726f4f1719c4a",
  "source": {
    "blob": "75916d7f6091b36000ada9fdc4c37859979ae3a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 548,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc76f2c9e60726f4f1719c4a4d575a7ac4b25437723ae4bed8ace5809ee776bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12389020-3e35-ed02-00f0-5113d60552c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_lt_subst {α} [IntModule α] [LE α] [LT α] [LawfulOrderLT α] [IsPreorder α] [OrderedAdd α] (ctx : Context α) (x : Var) (p₁ p₂ p₃ : Poly)
    : eq_lt_subst_cert x p₁ p₂ p₃ → p₁.denote' ctx = 0 → p₂.denote' ctx < 0 → p₃.denote' ctx < 0 := by
  simp [eq_lt_subst_cert]; intro h _ h₁ h₂; subst p₃; simp [h₁]
  exact zsmul_neg_iff (p₁.coeff x) h₂ |>.mpr h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linarith/Variantbeca26b4f720633f9c9c467cf6470ab8026f47ea942afc5527e324aa2a131722.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75916d7f6091b36000ada9fdc4c37859979ae3a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
