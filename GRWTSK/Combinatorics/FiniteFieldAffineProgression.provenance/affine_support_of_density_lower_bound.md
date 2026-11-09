# `GRWTSK.Combinatorics.FiniteFieldAffineProgression.affine_support_of_density_lower_bound`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [FiniteFieldAffineProgression.lean](../FiniteFieldAffineProgression.lean), line 93.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/FiniteFieldAffineProgression.lean#L93).
- Declaration spelling: `GRWTSK.Combinatorics.FiniteFieldAffineProgression.affine_support_of_density_lower_bound` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/FiniteFieldProgressionWitness.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/ComputerScience/AlgorithmsInComputerScience/VecNotation.lean)

- [Pinned upstream source](https://github.com/YaelDillies/apap/blob/b2001974b99b18ca1c13b6aa4791b7801563f939/APAP/FiniteField.lean)
- [Pinned upstream source](https://github.com/YaelDillies/apap/blob/b2001974b99b18ca1c13b6aa4791b7801563f939/APAP/Integer.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "apap",
      "project_subdir": "adapters/apap",
      "path": "adapters/apap/GRWTSK/Combinatorics/FiniteFieldAffineProgression.lean",
      "source_commit": "9b4fbbeed7922618e887a646cc2b15d244fff2b8",
      "source_blob": "422b30e25d448e0ae000b1b2ab0ac23efafe8044",
      "source_sha256": "540d56238c0a07cb572660ad171ef575002313e11bde778ba09fecf29efddf14",
      "declarations": [
        "GRWTSK.Combinatorics.FiniteFieldAffineProgression.endpoints_distinct_of_nontrivial_progression",
        "GRWTSK.Combinatorics.FiniteFieldAffineProgression.affine_embedding_of_nontrivial_progression",
        "GRWTSK.Combinatorics.FiniteFieldAffineProgression.affine_support_of_density_lower_bound"
      ],
      "upstream": [
        {
          "repository": "https://github.com/YaelDillies/apap",
          "commit": "b2001974b99b18ca1c13b6aa4791b7801563f939",
          "source": "APAP/FiniteField.lean",
          "blob": "68a671f366dc78f19108391b71505c40a7de2998",
          "declaration": "ff",
          "README_blob": "634299e3289f3d15a2f6bd6ae05e42105886b0d4",
          "LICENSE_blob": "261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64",
          "lean_toolchain_blob": "d0cf8c526254da3dafe6b3d635ee9d60f126c29b",
          "lake_manifest_blob": "f771a3f3e828b3bde0bb4d6b186b30a4be2ac2d9",
          "public_attribution": "Yaël Dillies and upstream APAP contributors; original notices retained in the pinned dependency. FiniteField.lean has no individual byline header.",
          "license": "Apache-2.0",
          "excluded_source": {
            "path": "APAP/Integer.lean",
            "blob": "43919f58c4e9e2ef73eac910ebbcec39b7dd2079",
            "declaration": "int",
            "status": "literal sorry; not imported or consumed"
          }
        }
      ],
      "native_pins": {
        "toolchain": "leanprover/lean4:v4.36.0-rc1",
        "mathlib_commit": "c31114ff810d2ce158c0f822f0cdad76771a5a6a",
        "api_sources": [
          {
            "path": "Mathlib/Algebra/Field/ZMod.lean",
            "blob": "5c602182db4cc8243aefe72f1d1f14524ced13d3",
            "declarations": [
              "ZMod.instField"
            ]
          },
          {
            "path": "Mathlib/Data/ZMod/Basic.lean",
            "blob": "aa726b1c3b551100c23970554d93064c758bd8b6",
            "declarations": [
              "ZMod.natCast_eq_zero_iff"
            ]
          },
          {
            "path": "Mathlib/Algebra/Module/Defs.lean",
            "blob": "658209d4f26b59f63ef01b69125ce60e37906b51",
            "declarations": [
              "two_smul"
            ]
          },
          {
            "path": "Mathlib/Algebra/GroupWithZero/Action/Units.lean",
            "blob": "63da4aca5f0839f0374b84bffa0c0e6b38a56bad",
            "declarations": [
              "inv_smul_smul₀"
            ]
          },
          {
            "path": "Mathlib/Data/Fin/VecNotation.lean",
            "blob": "bda36820900f25119c74e08eeb818974b65e19eb",
            "declarations": [
              "Matrix.vecCons",
              "Matrix.cons_val_zero",
              "Matrix.cons_val_succ"
            ]
          },
          {
            "path": "Mathlib/Tactic/FinCases.lean",
            "blob": "f4ec8eabb0796b54b01a94fec262402b81f6e2f2",
            "declarations": [
              "fin_cases"
            ]
          },
          {
            "path": "Mathlib/Data/Finset/Image.lean",
            "blob": "75032f4315bbe09d2e11bdbfb3d02d802fc5d9bd",
            "declarations": [
              "Finset.map",
              "Finset.mem_map"
            ]
          },
          {
            "path": "Mathlib/Data/Finset/Card.lean",
            "blob": "6e51fa71c87cffcddc4bfbbf865ad3fe6e16fdc2",
            "declarations": [
              "Finset.card_map"
            ]
          },
          {
            "path": "Mathlib/Tactic/Abel.lean",
            "blob": "e7ab749b3899900f2f54171c9b02671a9b575a1f",
            "declarations": [
              "abel"
            ]
          },
          {
            "path": "Mathlib/Combinatorics/Additive/AP/Three/Defs.lean",
            "blob": "7491ca04b1e558169448423fb4831aaa35e30d5d",
            "declarations": [
              "ThreeAPFree",
              "Finset.addRothNumber"
            ]
          }
        ]
      },
      "hypotheses": {
        "generic_transport": [
          "G : Type u",
          "AddCommGroup G",
          "q : Nat",
          "Module (ZMod q) G",
          "3<=q",
          "q.Prime",
          "a+c=b+b",
          "a!=b"
        ],
        "density_support": [
          "G : Type u",
          "AddCommGroup G",
          "Fintype G",
          "q : Nat",
          "Module (ZMod q) G",
          "A : Finset G",
          "delta : Real",
          "3<=q",
          "q.Prime",
          "A.Nonempty",
          "0<delta",
          "delta<=(A.dens:Real)",
          "(2:Real)^(148:Nat)*(1+Real.log(delta^-1))^(9:Nat)<(Module.finrank(ZMod q)G:Real)"
        ]
      },
      "conclusion": "There exist a,r:G and e:Fin 3 ↪ G with r≠0, every e i=a+i.val • r, univ.map e subset A, and (univ.map e).card=3. The generic transport retains e0=a,e1=b,e2=c and requires no Fintype G.",
      "use": "Turn the actual APAP finite-field witness into an embedding e:Fin3↪G of the three points and a finite support univ.map e of cardinality3 contained in A. This supplies a finite forbidden configuration for Roth/ThreeAPFree consumers rather than only the negative predicate or a nontrivial-but-possibly-repeated tuple.",
      "consumer_paths": [
        "GRWTSK/Combinatorics/Roth.lean"
      ],
      "root_consumer": {
        "path": "GRWTSK/Combinatorics/Roth.lean",
        "source_commit": "af07dd770356e7562ab0e6972b2dc9a2c5866465",
        "blob": "168711c875fcdfc746b63bdd2af19f27542b86cc",
        "declaration": "roth_3ap_theorem",
        "use": "Existing root gives failure of ThreeAPFree; actual finite-search/configuration support requires three distinct points and their affine parametrization. New isolated output supplies that object from the quantitative APAP route, without importing root4.34.1 under native4.36.0-rc1."
      },
      "paper_or_source": {
        "title": "The Kelley–Meka bounds for sets free of three-term arithmetic progressions",
        "authors": [
          "Thomas F. Bloom",
          "Olof Sisask"
        ],
        "arxiv": "2302.07211v3",
        "version_date": "2025-05-13",
        "url": "https://arxiv.org/abs/2302.07211v3",
        "method": "Finite-field Theorem2, odd-prime q, exponent1/9; pinned ff gives the source-normalized rank obstruction. The literal2^148 constant is not attributed to the informal paper.",
        "identity_review": "Root supplied the primary-source bibliographic correction. Pinned README explicitly points to2302.07211; distinct paper An improvement... is2309.02353 and is not this mapping."
      },
      "license": "Apache-2.0; Yaël Dillies/APAP and imported Mathlib source notices remain in pinned dependencies. Local attribution: grwtsk contributors.",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "comparator": "NOT_RUN",
        "fresh_independent_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED",
      "missing_bridges": [
        "Exact native4.36.0-rc1 qualification, full source/dependency closure preparation, fresh compilation, expected-type consumers, independent replay and complete transitive axiom acceptance remain required.",
        "No integer theorem: APAP.Integer.int is a literal sorry at the exact upstream pin and is excluded.",
        "No characteristic-two extension: a+c=b+b and a≠b can have c=a in characteristic two.",
        "No root dependency/import promotion or checked cross-version port from root4.34.1.",
        "No larger progression, simultaneous packing, effective search algorithm/cost or measured AI benefit.",
        "No PFR witness is used or identified with this APAP object."
      ]
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Local attribution: grwtsk contributors.
Source proof candidates; compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported APAP sources retain their upstream authorship and Apache-2.0 license.
-/

/-!
# Actual three-point affine supports from the finite-field APAP witness

The local Roth family uses `ThreeAPFree`, whose negation provides three points
with `a + c = b + b` and only `a ≠ b`. A finite configuration consumer needs an
injective three-point object. For a module over `ZMod q`, with prime `q ≥ 3`,
scalar `2` is invertible; this proves the missing first/third separation.

The construction then uses the actual step `r = b - a` and an embedding
`Fin 3 ↪ G`. Its mapped finite support has exactly three elements and lies in
the original set. The density theorem retains the exact source-normalized
`2^148 * (1 + log δ⁻¹)^9` threshold. That literal constant is an interface of
the pinned Lean source, not an attribution of an informal paper constant.

The characteristic-two boundary matters: `a + a = b + b` can hold with `a ≠ b`,
so the original witness convention alone does not give three distinct points.
No characteristic-two or integer theorem is asserted. In particular the admitted
`APAP.Integer.int` statement is not imported or used. The root Roth module is
not imported across the isolated Lean/Mathlib boundary.
-/

/-- Normalize the actual three source points into a nonzero-step affine
embedding, retaining the identity of all three entries. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
