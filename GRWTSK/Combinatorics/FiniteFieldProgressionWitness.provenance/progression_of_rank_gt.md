# `GRWTSK.Combinatorics.FiniteFieldProgressionWitness.progression_of_rank_gt`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [FiniteFieldProgressionWitness.lean](../FiniteFieldProgressionWitness.lean), line 30.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/FiniteFieldProgressionWitness.lean#L30).
- Declaration spelling: `GRWTSK.Combinatorics.FiniteFieldProgressionWitness.progression_of_rank_gt` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/YaelDillies/apap/blob/b2001974b99b18ca1c13b6aa4791b7801563f939/APAP/FiniteField.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "apap",
      "project_subdir": "adapters/apap",
      "path": "adapters/apap/GRWTSK/Combinatorics/FiniteFieldProgressionWitness.lean",
      "declarations": [
        "GRWTSK.Combinatorics.FiniteFieldProgressionWitness.progression_of_rank_gt",
        "GRWTSK.Combinatorics.FiniteFieldProgressionWitness.progression_of_density_lower_bound"
      ],
      "upstream": [
        {
          "repository": "YaelDillies/apap",
          "commit": "b2001974b99b18ca1c13b6aa4791b7801563f939",
          "source": "APAP/FiniteField.lean",
          "blob": "68a671f366dc78f19108391b71505c40a7de2998",
          "declarations": [
            "ff"
          ]
        }
      ],
      "hypotheses": "G AddCommGroup,Fintype,Module(ZMod q); q prime>=3; A nonempty Finset. rank exceeds2^148*(1+log((A.dens:Real)^-1))^9. Second result takes positive external density lower bound delta<=A.dens and its corresponding rank threshold.",
      "conclusion": "Explicit a,b,c in A, a+c=b+b and a!=b, matching exact ThreeAPFree nontriviality convention. No unproved pairwise-distinct strengthening.",
      "use": "Roth consumers supply failure of ThreeAPFree; APAP yields a quantitative rank threshold. The local consumer extracts actual witnesses and accepts externally established positive density bounds with a proved monotonicity bridge.",
      "consumer_paths": [
        "GRWTSK/Combinatorics/Roth.lean"
      ],
      "paper_or_source": "Thomas F. Bloom and Olof Sisask, The Kelley–Meka bounds for sets free of three-term arithmetic progressions, arXiv:2302.07211 (2023; primary version rechecked: v3, 2025-05-13), finite-field Theorem 2. Pinned APAP README links this exposition; the exact consumed declaration is ff with its own literal rank normalization. The separate An improvement to the Kelley-Meka bounds on three-term arithmetic progressions is arXiv:2309.02353, not the linked exposition. Bibliographic correction only; historical source pins, theorem bodies and NOT_RUN outcomes remain unchanged. Historical first-wave wording retained for traceability: Thomas F. Bloom and Olof Sisask; An improvement to the Kelley-Meka bounds on three-term arithmetic progressions; 2023 arXiv:2302.07211. Source README gives this exposition; native source is Yael Dillies/APAP contributors under Apache2.0.",
      "license": "Apache-2.0; source notices preserved through dependency",
      "missing_bridges": [
        "Native compilation/fresh kernel replay/transitive axiom audit/expected-type checking",
        "No integer quantitative Roth consumer: APAP/Integer.lean theorem int is := sorry at this exact upstream pin",
        "No root cross-version promotion or reinterpretation of exponent/prefix conditions"
      ],
      "source_blob": "c8236fb9574a1e709760a555464c99d9acdeccc4",
      "source_sha256": "154ad452ca74081302b336e193b18d2236cb9f543339b9ba57c93d18d003e952",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Local attribution: grwtsk contributors.
Source proof candidates; native compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported APAP sources retain their upstream authorship and Apache-2.0 license.
-/

/-!
# Quantitative finite-field progression witnesses

The local Roth family consumes the failure of `ThreeAPFree`; finite searches
and progression constructions instead need the actual three points. The
finite-field APAP endpoint provides a quantitative rank obstruction to
`ThreeAPFree`. This file extracts the witness and lets an independently supplied
positive lower bound for the set's density discharge the same threshold.

This uses `APAP/FiniteField.lean` only. The headline integer theorem in
`APAP/Integer.lean` is a `sorry` placeholder at the pinned upstream revision and
is deliberately not used. No integer Roth bound or prime-two result is asserted.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
