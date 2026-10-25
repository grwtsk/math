# exact_response

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62881d79-0420-862f-ad74-9e792a6f99bb",
  "kind": "theorem",
  "lexical_name": "exact_response",
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
  "slug": "exact-response--02a016d00c1b304f64abe4bd",
  "source": {
    "blob": "a309fe9b8a409c5ecdeaa6abbb9b5e165097a144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02a016d00c1b304f64abe4bd9d485359d32633402995ae861697b8fe345b8c21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62881d79-0420-862f-ad74-9e792a6f99bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_response (m : ℕ) (p : Fin 2) (r : Fin (m + 1)) :
    response m (witness m) (p, r) =
      (1 - Complex.exp (Complex.I * ((((r : ℝ) / (m : ℝ) ^ 2 * primeLog p) : ℝ) : ℂ))) ^ m := by
  change (∑ j : Fin (m + 1), entry m p r j *
    ((-1 : ℂ) ^ (j : ℕ) * (m.choose j : ℂ))) = _
  rw [Fin.sum_univ_eq_sum_range
    (fun j : ℕ => entry m p r j * ((-1 : ℂ) ^ j * (m.choose j : ℂ)))]
  rw [← binomial_identity]
  apply Finset.sum_congr rfl
  intro j hj
  have he : entry m p r j =
      Complex.exp (Complex.I * (((r : ℝ) / (m : ℝ) ^ 2 * primeLog p : ℝ) : ℂ)) ^ j := by
    rw [entry, ← Complex.exp_nat_mul]
    push_cast
    congr 1
    ring
  rw [he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MixtureBinomialWitness/Variantb16902e4ceaa2929ae931becfdf2bbbae278a0169276ee4b430e6d1bd6e1aa57.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a309fe9b8a409c5ecdeaa6abbb9b5e165097a144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
