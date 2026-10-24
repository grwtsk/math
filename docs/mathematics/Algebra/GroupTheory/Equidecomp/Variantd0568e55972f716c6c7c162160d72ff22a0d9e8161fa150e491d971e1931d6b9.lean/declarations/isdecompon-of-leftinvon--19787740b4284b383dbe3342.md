# IsDecompOn.of_leftInvOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd46e800175d9c983b05bf4beb539d5a7aaff93f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8548a31e-def5-a4ef-1b71-1eb683619bb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3772ef7a-9393-004b-0bdb-4e8ce5b333f6",
  "kind": "theorem",
  "lexical_name": "IsDecompOn.of_leftInvOn",
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
  "slug": "isdecompon-of-leftinvon--19787740b4284b383dbe3342",
  "source": {
    "blob": "bd46e800175d9c983b05bf4beb539d5a7aaff93f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 178,
    "path": "GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19787740b4284b383dbe334208ce86315f49625be5f2e78e7e92b44372773e7f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3772ef7a-9393-004b-0bdb-4e8ce5b333f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsDecompOn.of_leftInvOn {f g : X → X} {A : Set X} {S : Finset G}
    (hf : IsDecompOn f A S) (h : LeftInvOn g f A) : IsDecompOn g (f '' A) S⁻¹ := by
  rintro _ ⟨a, ha, rfl⟩
  rcases hf a ha with ⟨γ, γ_mem, hγ⟩
  use γ⁻¹, Finset.inv_mem_inv γ_mem
  rw [hγ, inv_smul_smul, ← hγ, h ha]

/-- The inverse function of an equidecomposition as an equidecomposition. -/
@[symm, simps toPartialEquiv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equidecomp/Variantd0568e55972f716c6c7c162160d72ff22a0d9e8161fa150e491d971e1931d6b9.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd46e800175d9c983b05bf4beb539d5a7aaff93f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
