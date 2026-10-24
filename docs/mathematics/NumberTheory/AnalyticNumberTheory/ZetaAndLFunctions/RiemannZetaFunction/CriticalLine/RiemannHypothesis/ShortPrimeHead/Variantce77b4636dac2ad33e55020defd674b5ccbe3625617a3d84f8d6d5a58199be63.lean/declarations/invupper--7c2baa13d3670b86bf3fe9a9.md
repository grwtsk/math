# invUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e6ea6013a03ad0cbd90e26cd521303a85fc746a6f0dd24f8974df02d3c4c70f",
  "kind": "def",
  "lexical_name": "invUpper",
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
  "slug": "invupper--7c2baa13d3670b86bf3fe9a9",
  "source": {
    "blob": "68fd74c924e3b115a9dac87627908634bd8913d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c2baa13d3670b86bf3fe9a9280721c92489766fcae08e728713fe1ac4f99144",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e6ea6013a03ad0cbd90e26cd521303a85fc746a6f0dd24f8974df02d3c4c70f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invUpper (n : ℕ) : ℝ :=
  match n with
  | 2 => 70711 / 100000
  | 3 => 57736 / 100000
  | 4 => 50000 / 100000
  | 5 => 44722 / 100000
  | 6 => 40825 / 100000
  | 7 => 37797 / 100000
  | 8 => 35356 / 100000
  | 9 => 33334 / 100000
  | 10 => 31623 / 100000
  | 11 => 30152 / 100000
  | 12 => 28868 / 100000
  | 13 => 27736 / 100000
  | 14 => 26727 / 100000
  | 15 => 25820 / 100000
  | 16 => 25000 / 100000
  | 17 => 24254 / 100000
  | 18 => 23571 / 100000
  | 19 => 22942 / 100000
  | 20 => 22361 / 100000
  | 21 => 21822 / 100000
  | 22 => 21321 / 100000
  | 23 => 20852 / 100000
  | 24 => 20413 / 100000
  | 25 => 20000 / 100000
  | 26 => 19612 / 100000
  | 27 => 19246 / 100000
  | 28 => 18899 / 100000
  | 29 => 18570 / 100000
  | 30 => 18258 / 100000
  | 31 => 17961 / 100000
  | 32 => 17678 / 100000
  | 33 => 17408 / 100000
  | 34 => 17150 / 100000
  | 35 => 16904 / 100000
  | 36 => 16667 / 100000
  | 37 => 16440 / 100000
  | 38 => 16223 / 100000
  | 39 => 16013 / 100000
  | 40 => 15812 / 100000
  | 41 => 15618 / 100000
  | 42 => 15431 / 100000
  | 43 => 15250 / 100000
  | 44 => 15076 / 100000
  | 45 => 14908 / 100000
  | 46 => 14745 / 100000
  | 47 => 14587 / 100000
  | 48 => 14434 / 100000
  | 49 => 14286 / 100000
  | 50 => 14143 / 100000
  | 51 => 14003 / 100000
  | 52 => 13868 / 100000
  | 53 => 13737 / 100000
  | 54 => 13609 / 100000
  | _ => 0

/-- The log upper in this module, with the following exact parameterization.

def logUpper (n : ℕ) : ℝ := match n with | 2 => 694 / 1000 | 3 => 1099 / 1000 | 5 => 1610 /
1000 | 7 => 1946 / 1000 | 11 => 2398 / 1000
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortPrimeHead/Variantce77b4636dac2ad33e55020defd674b5ccbe3625617a3d84f8d6d5a58199be63.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68fd74c924e3b115a9dac87627908634bd8913d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
