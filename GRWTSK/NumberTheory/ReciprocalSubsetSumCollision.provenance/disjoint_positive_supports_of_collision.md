# `GRWTSK.NumberTheory.AdditiveNumberTheory.ReciprocalSubsetSumCollision.disjoint_positive_supports_of_collision`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ReciprocalSubsetSumCollision.lean](../ReciprocalSubsetSumCollision.lean), line 51.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/ReciprocalSubsetSumCollision.lean#L51).
- Declaration spelling: `GRWTSK.NumberTheory.AdditiveNumberTheory.ReciprocalSubsetSumCollision.disjoint_positive_supports_of_collision` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/plby/lean-proofs/blob/8822f7ddef30fadbd92e1c6ab4ed897af356af5e/src/v4.29.1/ErdosProblems/Erdos350.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "lean-proofs",
      "project_subdir": "adapters/lean-proofs/v4.29.1",
      "path": "adapters/lean-proofs/v4.29.1/GRWTSK/NumberTheory/AdditiveNumberTheory/ReciprocalSubsetSumCollision.lean",
      "source_commit": "d38bc7c2e8b8cc45dad12180ff5bdbe5808deb66",
      "source_blob": "fb19960a95c6405f8cff395cbff9791111f8a37c",
      "source_sha256": "58bfcf82bb2a95a076e5522e9d18bc2a417610337d6b1081d053a950d46bb4e0",
      "declarations": [
        "GRWTSK.NumberTheory.AdditiveNumberTheory.ReciprocalSubsetSumCollision.disjoint_positive_supports_of_collision",
        "GRWTSK.NumberTheory.AdditiveNumberTheory.ReciprocalSubsetSumCollision.disjoint_positive_supports_of_reciprocal_mass"
      ],
      "upstream": [
        {
          "repository": "https://github.com/plby/lean-proofs",
          "commit": "8822f7ddef30fadbd92e1c6ab4ed897af356af5e",
          "tree": "58dcfe3878b60e662aa813bd6f41f865e476fc06",
          "source": {
            "path": "src/v4.29.1/ErdosProblems/Erdos350.lean",
            "blob": "4bd7afe5e89ab92209eee9453031c5e80f6fe314",
            "sha256": "e2f0129a7dfb5b1ea5593859242eb9c42e23da08bb5f4588c89e09aeca5e8d41"
          },
          "module": "ErdosProblems.Erdos350",
          "public_source_byline": {
            "informal": [
              "Charles Albert Ryavec",
              "ChatGPT"
            ],
            "formal": [
              "Aristotle",
              "Boris Alexeev"
            ]
          },
          "source_documentation": {
            "path": "ErdosProblems/Erdos350.md",
            "blob": "e3f4960e36c593f10442bf70080aac2759d42777",
            "sha256": "09bf71759e95e3ca50416dcd17d266eb3876f754b10b7fa318ff3b0d6b64c27d"
          },
          "consumed_declaration": "Erdos350.erdos_350",
          "consumed_exact_statement": "(A : Finset Nat) (hA : Erdos350.DecidableDistinctSubsetSums A) : Finset.sum A (fun n => (1 / (n : Real) : Real)) < 2",
          "predicate_statement": "Erdos350.DecidableDistinctSubsetSums A means forall X subset A, forall Y subset A, X != Y -> Finset.sum X id != Finset.sum Y id; generic definition has AddCommMonoid and DecidableEq hypotheses, instantiated here at Nat.",
          "all_boundaries": "Empty A is permitted; no positivity, nonempty, cardinal lower bound or bounded maximum is assumed by erdos_350. The upstream proof derives exclusion of zero from distinct subset sums. The new local contrapositive consumer is separate source scope.",
          "stable_url": "https://github.com/plby/lean-proofs/blob/8822f7ddef30fadbd92e1c6ab4ed897af356af5e/src/v4.29.1/ErdosProblems/Erdos350.lean"
        }
      ],
      "native_pins": {
        "toolchain": "leanprover/lean4:v4.29.1",
        "Mathlib": "5e932f97dd25535344f80f9dd8da3aab83df0fe6",
        "upstream_project_subdir": "src/v4.29.1",
        "upstream_configuration": {
          "path": "src/v4.29.1/lakefile.toml",
          "blob": "b489dc7a13b9a0146a3eb99d41bb7a9cb48cf995",
          "sha256": "6228948486a3a8020d271d2c735139d60f0f8f86dbaf9039f04e2125c6b1462d"
        },
        "upstream_manifest": {
          "path": "src/v4.29.1/lake-manifest.json",
          "blob": "9c9e0d75c31725cfca7e29bf9d61f2e53b7e0c95",
          "sha256": "31b019389123eddfa623c3ce6541fd5ef2d5d66169aa1beb04730b3ea31318a9"
        },
        "toolchain_source": {
          "path": "src/v4.29.1/lean-toolchain",
          "blob": "33e0c088939ad08c9f2b1befa3118a423b06ad7d",
          "sha256": "7dc000621e0046d1aada809e2b7177e64454645cf4c741e9daaf79c99ec2e7a2"
        },
        "adapter_configuration_identities": [
          {
            "path": "adapters/lean-proofs/v4.29.1/lakefile.toml",
            "blob": "e7c8dea9d2d8fbd2cc9ac694b45520aa36263b8d",
            "sha256": "08c19551691ccdca2f51b53524f9e2c5266146d5faba25ef3def9855bf43b5e1"
          },
          {
            "path": "adapters/lean-proofs/v4.29.1/lake-manifest.json",
            "blob": "b6b341f92d6ed090c89d97024803e8855c1b03f7",
            "sha256": "7a17e41ffc393ec5463df22ec2efad6f765693b236d2b62807f0f8cfb811ec1e"
          },
          {
            "path": "adapters/lean-proofs/v4.29.1/lean-toolchain",
            "blob": "33e0c088939ad08c9f2b1befa3118a423b06ad7d",
            "sha256": "7dc000621e0046d1aada809e2b7177e64454645cf4c741e9daaf79c99ec2e7a2"
          }
        ],
        "upstream_dependency_packages": [
          {
            "url": "https://github.com/leanprover-community/mathlib4.git",
            "type": "git",
            "subDir": null,
            "scope": "",
            "rev": "5e932f97dd25535344f80f9dd8da3aab83df0fe6",
            "name": "mathlib",
            "manifestFile": "lake-manifest.json",
            "inputRev": "v4.29.1",
            "inherited": false,
            "configFile": "lakefile.lean"
          },
          {
            "url": "https://github.com/leanprover-community/plausible",
            "type": "git",
            "subDir": null,
            "scope": "leanprover-community",
            "rev": "83e90935a17ca19ebe4b7893c7f7066e266f50d3",
            "name": "plausible",
            "manifestFile": "lake-manifest.json",
            "inputRev": "main",
            "inherited": true,
            "configFile": "lakefile.toml"
          },
          {
            "url": "https://github.com/leanprover-community/LeanSearchClient",
            "type": "git",
            "subDir": null,
            "scope": "leanprover-community",
            "rev": "c5d5b8fe6e5158def25cd28eb94e4141ad97c843",
            "name": "LeanSearchClient",
            "manifestFile": "lake-manifest.json",
            "inputRev": "main",
            "inherited": true,
            "configFile": "lakefile.toml"
          },
          {
            "url": "https://github.com/leanprover-community/import-graph",
            "type": "git",
            "subDir": null,
            "scope": "leanprover-community",
            "rev": "48d5698bc464786347c1b0d859b18f938420f060",
            "name": "importGraph",
            "manifestFile": "lake-manifest.json",
            "inputRev": "main",
            "inherited": true,
            "configFile": "lakefile.toml"
          },
          {
            "url": "https://github.com/leanprover-community/ProofWidgets4",
            "type": "git",
            "subDir": null,
            "scope": "leanprover-community",
            "rev": "4dd0959c44d1af0462bd604d0f87c5781307d709",
            "name": "proofwidgets",
            "manifestFile": "lake-manifest.json",
            "inputRev": "v0.0.95+lean-v4.29.1",
            "inherited": true,
            "configFile": "lakefile.lean"
          },
          {
            "url": "https://github.com/leanprover-community/aesop",
            "type": "git",
            "subDir": null,
            "scope": "leanprover-community",
            "rev": "7152850e7b216a0d409701617721b6e469d34bf6",
            "name": "aesop",
            "manifestFile": "lake-manifest.json",
            "inputRev": "master",
            "inherited": true,
            "configFile": "lakefile.toml"
          },
          {
            "url": "https://github.com/leanprover-community/quote4",
            "type": "git",
            "subDir": null,
            "scope": "leanprover-community",
            "rev": "707efb56d0696634e9e965523a1bbe9ac6ce141d",
            "name": "Qq",
            "manifestFile": "lake-manifest.json",
            "inputRev": "master",
            "inherited": true,
            "configFile": "lakefile.toml"
          },
          {
            "url": "https://github.com/leanprover-community/batteries",
            "type": "git",
            "subDir": null,
            "scope": "leanprover-community",
            "rev": "756e3321fd3b02a85ffda19fef789916223e578c",
            "name": "batteries",
            "manifestFile": "lake-manifest.json",
            "inputRev": "main",
            "inherited": true,
            "configFile": "lakefile.toml"
          },
          {
            "url": "https://github.com/leanprover/lean4-cli",
            "type": "git",
            "subDir": null,
            "scope": "leanprover",
            "rev": "7802da01beb530bf051ab657443f9cd9bc3e1a29",
            "name": "Cli",
            "manifestFile": "lake-manifest.json",
            "inputRev": "v4.29.0",
            "inherited": true,
            "configFile": "lakefile.toml"
          }
        ],
        "adapter_lock_derivation": "The adapter adds the exact plby Git subdirectory dependency and marks its Mathlib entry inherited=true instead of false. All original package revisions, URLs, subDirs and remaining entry fields match. This was a static lock derivation, not a reproduced Lake update.",
        "own_post_update_hook": false,
        "own_path_dependencies": [],
        "Mathlib_configuration_sources": [
          {
            "path": "Mathlib.lean",
            "blob": "41fcf3dd929beb847700e93ca7c1fad8f483d1b2",
            "sha256": "f753b8e3397e7f6039101615b07d8a316023ad7e1eda5b345504435a0fcf8df6"
          },
          {
            "path": "lakefile.lean",
            "blob": "767032949e478226a96a7999ab2b2d19f1d41edc",
            "sha256": "7acb933343be79d747829395b618b24eb99fc80dd8f2d0677c042841e2231119"
          },
          {
            "path": "lean-toolchain",
            "blob": "33e0c088939ad08c9f2b1befa3118a423b06ad7d",
            "sha256": "7dc000621e0046d1aada809e2b7177e64454645cf4c741e9daaf79c99ec2e7a2"
          },
          {
            "path": "lake-manifest.json",
            "blob": "62cc521e8156545784a0ea610c05f3f1ee57f49c",
            "sha256": "60cd1d888fafd19c2c540a15172501079680fbe89da977818b549e5473e9fed4"
          },
          {
            "path": "LICENSE",
            "blob": "8dada3edaf50dbc082c9a125058f25def75e625a",
            "sha256": "b40930bbcf80744c86c46a12bc9da056641d722716c378f5659b9e555ef833e1"
          }
        ],
        "Mathlib_post_update_boundary": "Mathlib lakefile.lean contains post_update. When used by a different root and MATHLIB_NO_CACHE_ON_UPDATE is not 1, it checks matching Lean version, builds cache.fetch and runs get in the root package directory. It is not an observed source patch supplier, but it is effectful and must not be silently executed or treated as proof evidence. No hook or Lake update was run.",
        "complete_dependency_config_audit": "NOT_RUN",
        "compiled_core_qualification": "NOT_RUN",
        "root_toolchain": "leanprover/lean4:v4.34.1",
        "root_version_transport": "UNSUPPLIED"
      },
      "hypotheses": {
        "cancellation_helper": "A,X,Y:Finset Nat; every element of A is strictly positive; X⊆A,Y⊆A,X≠Y and equal NAT sums Finset.sum X id=Finset.sum Y id. No reciprocal budget is required by this route.",
        "main": "A:Finset Nat arbitrary, including zero. ONLY (2:Real)≤Finset.sum A (fun a:Nat => (1:Real)/(a:Real)). No public positivity, nonempty, cardinality, maximum-size or extra universe hypothesis."
      },
      "conclusion": {
        "cancellation_helper": "∃S,T:Finset Nat, both subsets of A, Disjoint S T, both Nonempty, 0<Finset.sum S id and Finset.sum S id=Finset.sum T id. Actual proof uses S=X\\Y,T=Y\\X.",
        "main": "∃S,T:Finset Nat, BOTH subsets of the SAME A.erase0, Disjoint S T, both Nonempty, with equal strictly positive NAT sums. Hence they are also subsets of the original A and contain no zero."
      },
      "use": "For the existing distinct-subset-sum consumer, expose actual disjoint nonempty positive supports behind a reciprocal-mass obstruction, rather than only a failure of injectivity or a counting bound. The exact real reciprocal mass is retained when zero is removed. Native root-version/representation transport remains a separate missing bridge.",
      "consumer_paths": [
        "GRWTSK/NumberTheory/DistinctSubsetSums.lean"
      ],
      "root_consumer_source_commit": "3e30691fe4e2035e2f799a4b146cec30dbafd880",
      "root_consumer_blob": "4128530ca26874505217aeab1758b383137d68ea",
      "root_consumer_namespace": "GRWTSK.NumberTheory.AdditiveNumberTheory.DistinctSubsetSums",
      "root_consumer_declarations": [
        "SumDistinct",
        "pow_card_le_total_sum_add_one",
        "pow_card_le_card_mul_bound_add_one"
      ],
      "root_consumer_role": "Existing source proof candidate observes powerset-sum injectivity and proves elementary counting bounds. The new adapter supplies a reciprocal obstruction with actual balanced supports; root-version integration is not claimed.",
      "paper_or_source": {
        "title": "On Weird and Pseudoperfect Numbers",
        "authors": [
          "S. J. Benkoski",
          "P. Erdős"
        ],
        "year": 1974,
        "journal": "Mathematics of Computation28(126),617–623",
        "doi": "10.2307/2005938",
        "stable_url": "https://users.renyi.hu/~p_erdos/1974-24.pdf",
        "exact_theorem": "Theorem1: for positive integers1≤a1<...<an with distinct subset sums, sum_i1/ai<2. The paper credits the proof to C. Ryavec.",
        "source_mapping": "The selected Erdos350.erdos_350 gives this finite reciprocal endpoint, with positivity derived internally from distinct subset sums. The selected formal proof uses finite subset-sum counting/prefix comparison and reciprocal-sum comparison. Only the mathematical endpoint is mapped to Theorem1; no historical proof-route equivalence is supplied. Local construction applies the endpoint contrapositively to the zero-free input, then cancels common supports.",
        "not_consumed": "Stronger cardinal-dependent refinement, equality characterization, infinite extensions and unrelated weird-number results."
      },
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "local_attribution": "grwtsk contributors",
      "upstream_licensing": {
        "version_notice": {
          "path": "src/v4.29.1/LICENSE",
          "blob": "28334966307b373f23c1e929e128c84c5980066e",
          "sha256": "41e26750cf7403beef1b82310454ca79eb1da04b1dab82d4d42f377e15c01ea9"
        },
        "exact_notice": "Some files in this repository are from external sources and are\nlicensed under the Apache License, Version 2.0.  You may obtain a copy\nof the License at\n\n    https://www.apache.org/licenses/LICENSE-2.0\n",
        "status": "SELECTED_LEAF_LICENSE_GRANT_UNRESOLVED",
        "selected_leaf_license_statement": "No explicit copyright/license grant appears in the selected leaf. The version LICENSE says some external files are Apache licensed; it is not a blanket Apache grant for the collection. Preserve exact public bylines and record this licensing gap rather than inventing a license.",
        "source_copied_into_math": false,
        "Mathlib_license": "Apache-2.0 at the exact Mathlib LICENSE blob listed above; it does not extend a license to unrelated collected source."
      },
      "profile_sha256": "142a7e019d51a615a0f2f5105852bb650e0d4e3b25c5ea62eee3f3d28c6832da",
      "verification": {
        "toolchain_qualification": "NOT_RUN",
        "compilation": "NOT_RUN",
        "comparator": "NOT_RUN",
        "expected_interface": "NOT_RUN",
        "complete_module_discovery": "NOT_RUN",
        "fresh_independent_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "host_resource_restoration": "NOT_RUN",
        "second_independent_checker": "UNSUPPLIED"
      },
      "missing_bridges": [
        "Supported exact4.29.1 toolchain/core qualification, fresh full declared import closure and registry under current exact producer/policy/resource ownership, then every scoped native acceptance facet.",
        "Root4.34.1 representation/version integration; no root model is copied or imported into this native package.",
        "Selected-leaf copyright/license grant beyond the preserved scoped collection notice remains unresolved.",
        "No proof of the stronger absolute-constant exponential bound in Erdős Problem1 or effective/minimal collision search is supplied."
      ],
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Local attribution: grwtsk contributors.
The imported source retains its public bylines and scoped licensing notice.
The upstream project LICENSE mentions some external-source files only;
no repository-wide license grant is inferred here.
-/

/-!
# Disjoint positive subset-sum witnesses from reciprocal mass

The actual Erdős 350 source theorem bounds the real reciprocal sum of a set
whose subset sums are all distinct. Its contraposition supplies a collision,
but that collision can have overlapping supports. Cancelling the intersection
produces disjoint supports with an equal, strictly positive natural-number sum.

The main theorem permits zero in the input set. Removing zero leaves its exact
real reciprocal sum unchanged, since real division has `1/0 = 0`. Applying the
source theorem to that zero-free set avoids a spurious collision consisting
only of an empty subset and `{0}`. Both returned supports lie in `A.erase 0`.

The root `DistinctSubsetSums.SumDistinct` observes injectivity of the powerset
sum map, including the empty subset. The source predicate observes the same
literal subset sums through unequal-subset quantifiers. Here the actual source
theorem is consumed directly, without copying a root predicate or importing
the root module across the Lean 4.34.1 / native 4.29.1 boundary. A checked root
representation/version transport remains UNSUPPLIED. This does not prove the
stronger exponential lower bound conjectured in Erdős Problem 1.

Upstream: `plby/lean-proofs` at `8822f7ddef30fadbd92e1c6ab4ed897af356af5e`,
`src/v4.29.1/ErdosProblems/Erdos350.lean`, blob
`4bd7afe5e89ab92209eee9453031c5e80f6fe314`. Its informal byline lists Charles
Albert Ryavec and ChatGPT; its formal byline lists Aristotle and Boris Alexeev.
The actual endpoint is `Erdos350.erdos_350`. The isolated package retains
Lean 4.29.1 and Mathlib `5e932f97dd25535344f80f9dd8da3aab83df0fe6`.
Its source-level printed axiom report is not a fresh local receipt.

SOURCE_PROOF_CANDIDATE: compilation, expected-interface checking, fresh kernel
replay and complete transitive axiom auditing remain NOT_RUN.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
