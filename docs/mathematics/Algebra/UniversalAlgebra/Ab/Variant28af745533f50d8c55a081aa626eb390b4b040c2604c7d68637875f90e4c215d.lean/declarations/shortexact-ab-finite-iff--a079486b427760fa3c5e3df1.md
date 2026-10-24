# ShortExact.ab_finite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b7382f445fd84c34e1423e5a0bd49e6083dc09e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac5d5ce1-1e75-973a-ded9-81a4d825bcc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9881ab73-92a2-bf71-dc44-3e5bac68b53d",
  "kind": "lemma",
  "lexical_name": "ShortExact.ab_finite_iff",
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
  "slug": "shortexact-ab-finite-iff--a079486b427760fa3c5e3df1",
  "source": {
    "blob": "6b7382f445fd84c34e1423e5a0bd49e6083dc09e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 169,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a079486b427760fa3c5e3df1361038b1880ac28faeb063880868bdddced292d1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9881ab73-92a2-bf71-dc44-3e5bac68b53d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ShortExact.ab_finite_iff {S : ShortComplex Ab.{u}} (hS : S.ShortExact) :
    Finite S.X₂ ↔ Finite S.X₁ ∧ Finite S.X₃ where
  mp _ := ⟨.of_injective _ hS.ab_injective_f, .of_surjective _ hS.ab_surjective_g⟩
  mpr | ⟨_, _⟩ => hS.exact.ab_finite

end ShortComplex

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7382f445fd84c34e1423e5a0bd49e6083dc09e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
