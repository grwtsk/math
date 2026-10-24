# bot_lt_comap_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:871744be-1625-03f7-73b5-c17ecd88387a",
  "kind": "theorem",
  "lexical_name": "bot_lt_comap_prime",
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
  "slug": "bot-lt-comap-prime--c329d01f46b473264dd6edf4",
  "source": {
    "blob": "4040d9ab018926cf870a33a5f0fb78bfea948443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 277,
    "path": "GRWTSK/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c329d01f46b473264dd6edf4ab24d4f2854f616ff0ed8d8416205bcca23c2856",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:871744be-1625-03f7-73b5-c17ecd88387a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bot_lt_comap_prime [IsDomain R] (hM : M ≤ R⁰) (p : Ideal S) [hpp : p.IsPrime]
    (hp0 : p ≠ ⊥) : ⊥ < Ideal.comap (algebraMap R S) p := by
  haveI : IsDomain S := isDomain_of_le_nonZeroDivisors _ hM
  rw [← Ideal.comap_bot_of_injective (algebraMap R S) (IsLocalization.injective _ hM)]
  convert (orderIsoOfPrime M S).lt_iff_lt.mpr (show (⟨⊥, Ideal.bot_prime⟩ :
    { p : Ideal S // p.IsPrime }) < ⟨p, hpp⟩ from hp0.bot_lt)

variable (R) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variante088431b2ad7a55f1b263668ce64612f1f14d53d1998674418919dca689690b4.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4040d9ab018926cf870a33a5f0fb78bfea948443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
