# discr_prime_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f1515299068de52e564fca7761d2e32e313e5d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 644,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e503b50-b4fa-e10a-d677-ea8f04826e8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0de5abe9-a086-757b-82d9-da337eaeaeeb",
  "kind": "theorem",
  "lexical_name": "discr_prime_pow_succ",
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
  "slug": "discr-prime-pow-succ--8eff52a83dea7005075058ec",
  "source": {
    "blob": "8f1515299068de52e564fca7761d2e32e313e5d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 644,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eff52a83dea7005075058ecc1b21083faff8836b3af8f7c59413e3f672e4105",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0de5abe9-a086-757b-82d9-da337eaeaeeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_prime_pow_succ [IsCyclotomicExtension {p ^ (k + 1)} ℚ K] :
    haveI : NumberField K := IsCyclotomicExtension.numberField {p ^ (k + 1)} ℚ K
    NumberField.discr K =
    (-1) ^ (p ^ k * (p - 1) / 2) * p ^ (p ^ k * ((p - 1) * (k + 1) - 1)) := by
  simpa [totient_prime_pow hp.out (succ_pos k)] using discr_prime_pow p (k + 1) K

/-- We compute the absolute discriminant of a `p`-th cyclotomic field where `p` is prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1515299068de52e564fca7761d2e32e313e5d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
