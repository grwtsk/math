# isLittleO_zpow_mul_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d1b8e98970d66d73a4a4fe495d1f9abb10411c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:551b288c-b030-3846-86e0-042febe74963",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5fbfc8c-85c2-fc05-db36-f54327d12514",
  "kind": "theorem",
  "lexical_name": "isLittleO_zpow_mul_exp",
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
  "slug": "islittleo-zpow-mul-exp--737b4902a945a908b714517b",
  "source": {
    "blob": "8d1b8e98970d66d73a4a4fe495d1f9abb10411c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 199,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:737b4902a945a908b714517bd368fc6eead89d45567bd5129c9001d29536fb3c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5fbfc8c-85c2-fc05-db36-f54327d12514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLittleO_zpow_mul_exp {b₁ b₂ : ℝ} (hl : IsExpCmpFilter l) (hb : b₁ < b₂) (m n : ℤ) :
    (fun z => z ^ m * exp (b₁ * z)) =o[l] fun z => z ^ n * exp (b₂ * z) := by
  simpa only [cpow_intCast] using hl.isLittleO_cpow_mul_exp hb m n

end IsExpCmpFilter

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1b8e98970d66d73a4a4fe495d1f9abb10411c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
