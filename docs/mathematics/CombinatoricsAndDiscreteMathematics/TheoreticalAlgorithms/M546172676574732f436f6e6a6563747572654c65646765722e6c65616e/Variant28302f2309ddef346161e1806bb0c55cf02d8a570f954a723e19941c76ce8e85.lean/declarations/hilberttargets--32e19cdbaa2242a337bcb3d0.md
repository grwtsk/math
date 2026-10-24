# hilbertTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6a78360c9d01d3224cea9cdf714a487188221e714705b562549e895babf9b4a",
  "kind": "def",
  "lexical_name": "hilbertTargets",
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
  "slug": "hilberttargets--32e19cdbaa2242a337bcb3d0",
  "source": {
    "blob": "bb2faa226d61cc81814b4f0d3c3bc5f408105b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32e19cdbaa2242a337bcb3d00f6d65350de7381c3ea597461439e87fcfe26f6a",
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

Occurrence: `declaration:d6a78360c9d01d3224cea9cdf714a487188221e714705b562549e895babf9b4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hilbertTargets : List OpenTargetRecord := [
  mk "hilbert.6.physics_axiomatization" .hilbert "Hilbert 6 physics axiomatization" .openStatus
    ["probability", "statistical mechanics", "quantum field theory"]
    ["axiomatize physical theories"]
    ["chosen physical formalism", "mathematical semantics"]
    ["formal foundation target"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "hilbert.8.rh" .hilbert "Hilbert 8 Riemann Hypothesis" .openStatus
    ["Riemann zeta function"]
    ["RH component of Hilbert 8"]
    ["zeta zeros", "critical line"]
    ["critical-line conclusion"]
    ["weaker zero-density and critical-line proportion results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "hilbert.8.goldbach_twin_prime" .hilbert "Hilbert 8 additive prime equations" .openStatus
    ["prime variables", "linear Diophantine equations"]
    ["Goldbach and twin-prime-style special cases"]
    ["coprime integral coefficients", "prime solution predicate"]
    ["prime solution existence"]
    ["bounded prime gaps as a special partial direction"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "hilbert.8.dedekind_zeta" .hilbert "Hilbert 8 Dedekind zeta prime distribution" .openStatus
    ["number field", "Dedekind zeta function", "prime ideals"]
    ["transfer prime distribution methods to number fields"]
    ["ideal norm", "Dedekind zeta analytic setup"]
    ["prime ideal distribution conclusion"]
    ["analytic continuation and functional equation known as background"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "hilbert.12.explicit_class_field_theory" .hilbert "Hilbert 12 explicit class field theory" .openStatus
    ["abelian extensions", "special values", "class fields"]
    ["explicit generators beyond known cases"]
    ["base field", "reciprocity law"]
    ["explicit class-field construction"]
    ["known Kronecker-Weber and CM cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "hilbert.16.real_algebraic_curves" .hilbert "Hilbert 16 real algebraic curves" .partialStatus
    ["real algebraic curves", "ovals", "degree"]
    ["topological classification by degree"]
    ["curve degree", "real locus"]
    ["classification constraints"]
    ["many degree-specific results"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [],
  mk "hilbert.16.limit_cycles" .hilbert "Hilbert 16 limit cycles" .openStatus
    ["polynomial vector fields", "limit cycles"]
    ["uniform finiteness and bounds"]
    ["degree bound", "planar polynomial system"]
    ["limit-cycle count conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "hilbert.23.variational_methods" .hilbert "Hilbert 23 variational-method program" .unknownStatus
    ["calculus of variations", "variational methods"]
    ["programmatic method-development target"]
    ["selected variational problem"]
    ["method/residue classification"]
    ["broad program rather than single theorem"]
    ["do not package as one theorem"]
    .mutableStatusAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant28302f2309ddef346161e1806bb0c55cf02d8a570f954a723e19941c76ce8e85.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2faa226d61cc81814b4f0d3c3bc5f408105b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
