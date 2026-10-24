# nontrivial_of_invariantBasisNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f1dd95ebb2e8af2edc1572aca3f015df3ae5432",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1416cd0f-4b9d-76ca-c9d2-35d66ace2f35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5730280f-755d-804a-db82-87ed4adb97f6",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_invariantBasisNumber",
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
  "slug": "nontrivial-of-invariantbasisnumber--93315f65b4d8bc0501581094",
  "source": {
    "blob": "6f1dd95ebb2e8af2edc1572aca3f015df3ae5432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 237,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93315f65b4d8bc05015810948401fd5409c9164442d85ed7cff92cdb1ad96189",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5730280f-755d-804a-db82-87ed4adb97f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_invariantBasisNumber : Nontrivial R := by
  by_contra! h
  exact zero_ne_one (eq_of_fin_equiv R <| .ofSubsingleton ..)

end

section

variable (R : Type u) [Ring R] [Nontrivial R] [IsNoetherianRing R]

/-- Any nontrivial Noetherian ring satisfies the strong rank condition,
    since it satisfies Orzech property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f1dd95ebb2e8af2edc1572aca3f015df3ae5432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
