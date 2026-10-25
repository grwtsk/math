# identity_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77910078-a9f5-e45e-61c5-606a212ffb53",
  "kind": "theorem",
  "lexical_name": "identity_admissible",
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
  "slug": "identity-admissible--cdf5336696923f04aa309eb9",
  "source": {
    "blob": "8edc5ea035d5ab08d9c6da6a675fa70744ed209f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdf5336696923f04aa309eb9a6bcd2a38cdc3ed373c745f889ee3f3e619969fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77910078-a9f5-e45e-61c5-606a212ffb53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem identity_admissible {k : Nat} {e : J.Env (Ω.context k)}
    (he : J.images e = Expr.var ∘ Expr.reverseIndex k) : J.Admissible (U := U) e := by
  intro i B hi
  obtain ⟨s,hB⟩ := HasType.lookup_sorted (Ω.valid k) hi
  have ht := (J.typed e i B hi).normalize_type hw
  have hG : J.images e i ∈ Ground Ω (B.subst (J.images e)).normalForm := by
    rw [he] at ht ⊢
    exact var_ground _ ht
  exact ⟨fun _ => (J.candidate e (.sorted hB)).lower hG,
    fun _ => (ground_le_top hG).2,fun _ _ => hG⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant12724fc0ae3acf818a5c1c5df4a300dfe4283f6d813ec803ca711156f0c1997d.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8edc5ea035d5ab08d9c6da6a675fa70744ed209f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
