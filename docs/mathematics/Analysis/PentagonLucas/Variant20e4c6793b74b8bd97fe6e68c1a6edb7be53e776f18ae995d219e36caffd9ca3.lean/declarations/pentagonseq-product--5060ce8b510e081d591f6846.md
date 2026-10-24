# pentagonSeq_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a5823140c25e661c7d3858db5109737283b4323",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5fb20ed-91de-698e-514d-b69f1439dd74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:482a21a5-d237-bfd5-69f9-c61094c89de9",
  "kind": "theorem",
  "lexical_name": "pentagonSeq_product",
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
  "slug": "pentagonseq-product--5060ce8b510e081d591f6846",
  "source": {
    "blob": "8a5823140c25e661c7d3858db5109737283b4323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5060ce8b510e081d591f6846b4a4493ba92d966c8a8be97d329290188dbbd19f",
  "verification": {
    "reference": "docs/verification/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:482a21a5-d237-bfd5-69f9-c61094c89de9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pentagonSeq_product : α * β = 2 * sin (π / 5) := by
  unfold α β
  have h : 2 * cos (π / 10) * (2 * sin (π / 10))
      = 2 * (2 * sin (π / 10) * cos (π / 10)) := by ring
  rw [h, ← sin_two_mul]
  ring_nf

/-! ### Recurrence relation -/

/-- The fundamental recurrence: T_{n+2} = (α + β) · T_{n+1} - αβ · T_n.

This follows from α and β being roots of x² - (α+β)x + αβ = 0,
i.e., α² = (α+β)α - αβ and β² = (α+β)β - αβ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PentagonLucas/Variant20e4c6793b74b8bd97fe6e68c1a6edb7be53e776f18ae995d219e36caffd9ca3.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5823140c25e661c7d3858db5109737283b4323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
