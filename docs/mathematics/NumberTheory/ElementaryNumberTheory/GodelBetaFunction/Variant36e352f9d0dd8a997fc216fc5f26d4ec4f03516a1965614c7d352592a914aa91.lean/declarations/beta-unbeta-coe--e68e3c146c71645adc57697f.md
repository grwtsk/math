# beta_unbeta_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48443962-742e-ee23-2120-05f3b50ec7d8",
  "kind": "lemma",
  "lexical_name": "beta_unbeta_coe",
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
  "slug": "beta-unbeta-coe--e68e3c146c71645adc57697f",
  "source": {
    "blob": "68bd7e3e60920361d6cb515fab9aea764f0a3e05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e68e3c146c71645adc57697f4f2cc16349367dd8749cb664d1507d7993a94a02",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48443962-742e-ee23-2120-05f3b50ec7d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma beta_unbeta_coe (l : List ℕ) (i : Fin l.length) : beta (unbeta l) i = l[i] := by
  simpa [beta, unbeta, coprimes] using mod_eq_of_modEq
    ((chineseRemainderOfFinset (l[·]) (coprimes (l[·])) Finset.univ
      (by simp [coprimes])
      (by simpa using Set.pairwise_univ.mpr (pairwise_coprime_coprimes _))).prop i (by simp))
    (coprimes_lt _ _)

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant36e352f9d0dd8a997fc216fc5f26d4ec4f03516a1965614c7d352592a914aa91.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68bd7e3e60920361d6cb515fab9aea764f0a3e05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
