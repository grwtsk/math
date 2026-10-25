# apply_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a17805f1-de51-942c-caeb-75daf31882a0",
  "kind": "theorem",
  "lexical_name": "apply_piecewise",
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
  "slug": "apply-piecewise--7d86c2fedd50c8c0685dfc96",
  "source": {
    "blob": "ec2f011fa294e04b3ddb8fc0f2f31dd8f600cbbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d86c2fedd50c8c0685dfc964908204b04b731b97874c34bff928a2b93fe18e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a17805f1-de51-942c-caeb-75daf31882a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_piecewise {δ' : α → Sort*} (h : ∀ i, δ i → δ' i) {x : α} :
    h x (s.piecewise f g x) = s.piecewise (fun x => h x (f x)) (fun x => h x (g x)) x := by
  by_cases hx : x ∈ s <;> simp [hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Piecewise/Variantb85870fee65f99767cb444d6c8125ad352cabb6a4fa6ddd801fa429a4979e48c.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec2f011fa294e04b3ddb8fc0f2f31dd8f600cbbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
