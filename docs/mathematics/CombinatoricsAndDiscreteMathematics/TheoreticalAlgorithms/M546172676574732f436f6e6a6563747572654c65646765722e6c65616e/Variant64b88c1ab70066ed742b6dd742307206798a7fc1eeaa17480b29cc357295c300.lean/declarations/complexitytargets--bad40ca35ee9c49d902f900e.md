# complexityTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a21b090a5edc6f662e592df1eee03bd42885c9316c472ece257120fa782113bf",
  "kind": "def",
  "lexical_name": "complexityTargets",
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
  "slug": "complexitytargets--bad40ca35ee9c49d902f900e",
  "source": {
    "blob": "ab8645f014820ae2c7ae62703a80a46a4626c7fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 508,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bad40ca35ee9c49d902f900e64d45f56fa632ffd30a148eea4840ee062cc4226",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a21b090a5edc6f662e592df1eee03bd42885c9316c472ece257120fa782113bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def complexityTargets : List OpenTargetRecord := [
  mk "complexity.p_vs_np" .complexity "P versus NP" .openStatus
    ["languages", "polynomial-time machines", "verifiers"]
    ["P equals NP or P differs from NP"]
    ["encoding model", "polynomial bound"]
    ["class equality/separation"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "complexity.np_vs_conp" .complexity "NP versus coNP" .openStatus
    ["languages", "certificates", "complements"]
    ["NP differs from coNP or equality"]
    ["verification predicates"]
    ["proof/certificate asymmetry"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.pspace_exptime" .complexity "PSPACE and EXPTIME variants" .openStatus
    ["complexity classes", "resource bounds"]
    ["hierarchy separations and refinements"]
    ["machine model", "space/time bound"]
    ["class separation"]
    ["some hierarchy theorems known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.permanent_determinant" .complexity "Permanent versus determinant" .openStatus
    ["algebraic circuits", "Valiant classes"]
    ["permanent requires large determinant representation"]
    ["field and representation model"]
    ["lower-bound conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.circuit_lower_bounds" .complexity "Circuit lower bounds" .openStatus
    ["AC0", "TC0", "NC", "P/poly"]
    ["explicit functions require large circuits"]
    ["circuit class and uniformity hypotheses"]
    ["lower-bound conclusion"]
    ["many restricted lower bounds known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.unique_games" .complexity "Unique Games Conjecture" .openStatus
    ["constraint graph", "label cover"]
    ["hardness threshold behavior"]
    ["alphabet size and completeness/soundness parameters"]
    ["approximation hardness conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.eth_seth" .complexity "ETH and SETH" .openStatus
    ["satisfiability", "time lower bounds"]
    ["no subexponential or improved exponential algorithms"]
    ["SAT variant and encoding size"]
    ["time lower-bound hypothesis"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.derandomization" .complexity "Derandomization targets" .openStatus
    ["BPP", "P", "pseudorandom generators"]
    ["randomness can or cannot be removed efficiently"]
    ["PRG assumptions or circuit lower bounds"]
    ["class containment/separation"]
    ["conditional derandomization results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "complexity.quantum" .complexity "Quantum complexity targets" .openStatus
    ["BQP", "QMA", "quantum PCP"]
    ["quantum class separations and PCP behavior"]
    ["quantum verification model"]
    ["separation or hardness conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8645f014820ae2c7ae62703a80a46a4626c7fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
