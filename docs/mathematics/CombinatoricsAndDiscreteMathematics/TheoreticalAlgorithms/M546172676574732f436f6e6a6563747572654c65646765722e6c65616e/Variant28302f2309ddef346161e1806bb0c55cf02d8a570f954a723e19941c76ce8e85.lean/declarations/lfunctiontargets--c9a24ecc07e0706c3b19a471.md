# lFunctionTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7468dbe16e9da19337bc24ccd2a96f187c60f65ee1840eb302e208d9d13016a5",
  "kind": "def",
  "lexical_name": "lFunctionTargets",
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
  "slug": "lfunctiontargets--c9a24ecc07e0706c3b19a471",
  "source": {
    "blob": "bb2faa226d61cc81814b4f0d3c3bc5f408105b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 465,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9a24ecc07e0706c3b19a471b1c520538b72a197bbb7e4652e5471c4d922f4ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7468dbe16e9da19337bc24ccd2a96f187c60f65ee1840eb302e208d9d13016a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lFunctionTargets : List OpenTargetRecord := [
  mk "lfunc.rh_grh" .lFunctions "RH and GRH for L-functions" .openStatus
    ["L-functions", "nontrivial zeros"]
    ["zeros lie on the critical line"]
    ["analytic continuation", "functional equation"]
    ["critical-line conclusion"]
    ["many verified finite-height checks"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium, sourceHilbertEight],
  mk "lfunc.montgomery_pair_correlation" .lFunctions "Montgomery pair correlation" .openStatus
    ["zeta zeros", "scaled spacings"]
    ["pair correlation has GUE form"]
    ["zero statistics and limiting process"]
    ["limiting correlation kernel"]
    ["conditional and numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "lfunc.gue_statistics" .lFunctions "GUE statistics for zeros" .openStatus
    ["L-function zero ensembles"]
    ["random matrix statistics for zero spacings"]
    ["family of L-functions"]
    ["limiting distribution"]
    ["numerical evidence"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "lfunc.zero_density" .lFunctions "Zero-density strengthening targets" .partialStatus
    ["zeros of L-functions", "critical strip"]
    ["density estimates strong enough for target applications"]
    ["height and real-part ranges"]
    ["zero-density bound"]
    ["classical zero-density results"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceHilbertEight],
  mk "lfunc.analytic_continuation" .lFunctions "Analytic continuation interfaces" .partialStatus
    ["Dirichlet series", "automorphic L-functions"]
    ["continuation and functional equation interfaces"]
    ["chosen L-function class"]
    ["meromorphic or entire continuation"]
    ["known for many standard L-functions"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceHilbertEight],
  mk "lfunc.special_values" .lFunctions "Special-value arithmetic targets" .openStatus
    ["L-values", "periods", "regulators"]
    ["special values encode arithmetic invariants"]
    ["motive or arithmetic object hypotheses"]
    ["value/invariant formula"]
    ["many known formulas in special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2faa226d61cc81814b4f0d3c3bc5f408105b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
