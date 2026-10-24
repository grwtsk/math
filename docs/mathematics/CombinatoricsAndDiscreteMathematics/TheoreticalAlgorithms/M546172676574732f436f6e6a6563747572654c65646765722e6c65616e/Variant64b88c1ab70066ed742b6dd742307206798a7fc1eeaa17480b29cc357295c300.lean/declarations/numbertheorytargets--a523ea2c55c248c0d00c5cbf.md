# numberTheoryTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fa0d6c182f8c8e83949e39e63549ae2ac4edddd471c71800f355c4b76f72a87",
  "kind": "def",
  "lexical_name": "numberTheoryTargets",
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
  "slug": "numbertheorytargets--a523ea2c55c248c0d00c5cbf",
  "source": {
    "blob": "ab8645f014820ae2c7ae62703a80a46a4626c7fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 350,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a523ea2c55c248c0d00c5cbf7ed6b55f5ca4132cc880f2c2f3e339309560a2b6",
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

Occurrence: `declaration:7fa0d6c182f8c8e83949e39e63549ae2ac4edddd471c71800f355c4b76f72a87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def numberTheoryTargets : List OpenTargetRecord := [
  mk "nt.prime_distribution" .numberTheory "Prime distribution frontier" .openStatus
    ["zeta zeros", "prime counting functions"]
    ["RH/GRH, zero-density, GUE, pair-correlation residues"]
    ["analytic L-function framework"]
    ["prime distribution error bounds"]
    ["PNT and many weaker results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium, sourceHilbertEight],
  mk "nt.additive_primes" .numberTheory "Additive primes" .openStatus
    ["prime sums", "representation functions"]
    ["Goldbach, weak/strong/ternary and constrained variants"]
    ["integer parity/size hypotheses"]
    ["prime representation"]
    ["weak Goldbach solved; strong variants open"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.prime_gaps" .numberTheory "Prime gaps" .openStatus
    ["consecutive primes", "prime tuples"]
    ["twin prime, Polignac, Hardy-Littlewood prime tuples"]
    ["admissible tuple hypotheses"]
    ["infinitely many requested gaps/tuples"]
    ["bounded gaps known, exact twin-prime gap open"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.goldbach" .numberTheory "Landau Goldbach problem" .openStatus
    ["even integers", "prime sums"]
    ["every even integer greater than two is sum of two primes"]
    ["even integer greater than two"]
    ["two-prime representation"]
    ["weak Goldbach and Chen-type partial results"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.twin_prime" .numberTheory "Landau twin prime problem" .openStatus
    ["prime numbers"]
    ["infinitely many prime pairs with difference two"]
    ["prime pair predicate"]
    ["infinitude conclusion"]
    ["bounded gaps partial progress"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.legendre" .numberTheory "Landau Legendre problem" .openStatus
    ["consecutive squares", "prime intervals"]
    ["prime between every pair of consecutive squares"]
    ["positive integer n"]
    ["existence of prime in interval"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.landau.n2_plus_one" .numberTheory "Landau n squared plus one primes" .openStatus
    ["quadratic polynomial", "prime values"]
    ["infinitely many primes of form n^2 + 1"]
    ["integer n"]
    ["prime-value infinitude"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceLandauProblems],
  mk "nt.polynomial_primes" .numberTheory "Polynomial prime conjectures" .openStatus
    ["integer polynomials", "prime values"]
    ["Bunyakovsky, Schinzel H, Bateman-Horn"]
    ["local obstruction conditions"]
    ["prime-value density or infinitude"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "nt.elliptic_arithmetic" .numberTheory "Elliptic and arithmetic geometry conjectures" .openStatus
    ["elliptic curves", "Shafarevich-Tate group", "L-functions"]
    ["BSD, Tate, Sha-finiteness, modularity generalizations"]
    ["arithmetic variety hypotheses"]
    ["rank/cycle/modularity conclusions"]
    ["many special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium],
  mk "nt.class_field_iwasawa" .numberTheory "Class field and Iwasawa targets" .openStatus
    ["number fields", "Iwasawa modules"]
    ["Leopoldt, Vandiver, Greenberg"]
    ["prime and field hypotheses"]
    ["rank, class, or Iwasawa invariant conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "nt.langlands" .numberTheory "Langlands program targets" .openStatus
    ["automorphic representations", "Galois representations"]
    ["functoriality, reciprocity, compatibility beyond known cases"]
    ["local/global fields", "representation data"]
    ["correspondence or transfer conclusion"]
    ["large families of proven cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceHilbertEight],
  mk "nt.diophantine_geometry" .numberTheory "Diophantine geometry conjectures" .openStatus
    ["varieties", "height functions", "rational points"]
    ["abc, Vojta, Bombieri-Lang"]
    ["field and variety hypotheses"]
    ["height/rational-point bound"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "nt.algebraic_cycles" .numberTheory "Algebraic cycle conjectures" .openStatus
    ["cycles", "cohomology", "motives"]
    ["Hodge, Tate, standard, Bloch-Beilinson"]
    ["smooth projective variety hypotheses"]
    ["cycle/cohomology comparison"]
    ["known special cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceClayMillennium]
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8645f014820ae2c7ae62703a80a46a4626c7fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
