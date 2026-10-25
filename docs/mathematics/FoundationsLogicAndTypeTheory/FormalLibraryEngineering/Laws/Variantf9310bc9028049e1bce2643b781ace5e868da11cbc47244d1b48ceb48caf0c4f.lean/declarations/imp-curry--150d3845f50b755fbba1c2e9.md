# imp_curry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e762ecf143854a45660037b5333e5e6ca1ca9c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:840542b3-16c1-2353-0210-19041d0bd92e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6e0576c-9e3f-7733-e561-b0af7b192d8f",
  "kind": "theorem",
  "lexical_name": "imp_curry",
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
  "slug": "imp-curry--150d3845f50b755fbba1c2e9",
  "source": {
    "blob": "9e762ecf143854a45660037b5333e5e6ca1ca9c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:150d3845f50b755fbba1c2e9b9fac8e0122a3c0347daed17ba2a645b7f01a0ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6e0576c-9e3f-7733-e561-b0af7b192d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imp_curry {P Q : SVal.StateTuple σs → Prop} : (SVal.curry (fun t => ⟨P t⟩) → SVal.curry (fun t => ⟨Q t⟩)) ⊣⊢ₛ (SVal.curry fun t => ⟨P t → Q t⟩) := by
  induction σs
  case nil => rfl
  case cons σ σs ih => intro s; simp only [imp_cons, SVal.curry_cons]; exact ih

end Std.Do.SPred

/-! # `evalsTo` — relate an `SVal` to a pure value -/

namespace Std.Do.SVal

/-- Relates a stateful value to a pure value, lifting equality through the state layers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variantf9310bc9028049e1bce2643b781ace5e868da11cbc47244d1b48ceb48caf0c4f.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e762ecf143854a45660037b5333e5e6ca1ca9c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
