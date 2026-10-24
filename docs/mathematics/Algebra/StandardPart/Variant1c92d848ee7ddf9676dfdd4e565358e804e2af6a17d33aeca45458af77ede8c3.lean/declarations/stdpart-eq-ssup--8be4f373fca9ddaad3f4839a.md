# stdPart_eq_sSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad2e6fff-a6cc-b4ce-56f8-efe783883326",
  "kind": "theorem",
  "lexical_name": "stdPart_eq_sSup",
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
  "slug": "stdpart-eq-ssup--8be4f373fca9ddaad3f4839a",
  "source": {
    "blob": "257c0d42e19a2ce43c8766ae128a374546011e77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 480,
    "path": "GRWTSK/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8be4f373fca9ddaad3f4839a7dfb19d1622e5a89a42b42b173e05eed388a62f1",
  "verification": {
    "reference": "docs/verification/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad2e6fff-a6cc-b4ce-56f8-efe783883326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stdPart_eq_sSup (f : ℝ →+*o K) (x : K) : stdPart x = sSup {r | f r < x} := by
  rw [← neg_inj, ← stdPart_neg, stdPart_eq_sInf f, ← Real.sInf_neg]
  congr 1
  ext
  simp [neg_lt]

end ArchimedeanClass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `257c0d42e19a2ce43c8766ae128a374546011e77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
