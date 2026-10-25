# toCNF.go_as_denote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf23bf3f-e3c1-7893-b178-61eb8afbb387",
  "kind": "theorem",
  "lexical_name": "toCNF.go_as_denote",
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
  "slug": "tocnf-go-as-denote--a54dbd0cd9d8d4c78d033d52",
  "source": {
    "blob": "b0184a078c2239ae7e1588b9d627c3fe939fbc5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 600,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a54dbd0cd9d8d4c78d033d5239fb3f943ed92a9d4c9874aef5cdc7b638596b37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf23bf3f-e3c1-7893-b178-61eb8afbb387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toCNF.go_as_denote (aig : AIG Nat) (start) (h1) (assign1) :
    ((⟦aig, ⟨start, inv, h1⟩, assign1⟧ && (go aig start h1 (.empty aig)).val.eval (cnfSatAssignment aig assign1)) = sat?)
      →
    (⟦aig, ⟨start, inv, h1⟩, assign1⟧ = sat?) := by
  have := go_as_denote' aig start inv h1 assign1
  by_cases CNF.eval (cnfSatAssignment aig assign1) (go aig start h1 (State.empty aig)).val.cnf <;> simp_all

/--
Connect SAT results about the AIG to SAT results about the CNF.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0184a078c2239ae7e1588b9d627c3fe939fbc5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
