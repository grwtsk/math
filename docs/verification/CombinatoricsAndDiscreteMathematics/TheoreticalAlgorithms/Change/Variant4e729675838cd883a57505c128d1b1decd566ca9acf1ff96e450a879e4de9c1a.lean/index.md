# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Change.Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc8d742639bf85eee409e3f5dc2de30a9ee3894a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc8d742639bf85eee409e3f5dc2de30a9ee3894a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Authorization` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Index.Records` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RepresentationChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean/declarations/representationchange--4fd74c23b4334381efe4c0b5.md) | 15 | `declaration-track:4fd74c23b4334381efe4c0b504105aa5c698613dde53d535b73bd52f3d6433e0` |
| 2 | `structure` | [CanonicalIndexPatch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean/declarations/canonicalindexpatch--8242d4a441b20787ebf2cb3b.md) | 28 | `declaration-track:8242d4a441b20787ebf2cb3baf60d482a42a91687188d83d951a2242f47d7f6e` |
| 3 | `def` | [CanonicalIndexPatch.AppliesTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean/declarations/canonicalindexpatch-appliesto--6fb4145a0a317dd529677f91.md) | 37 | `declaration-track:6fb4145a0a317dd529677f91fe694e1d04709d33371a68436d39d9dcdb049973` |
| 4 | `theorem` | [CanonicalIndexPatch.appliesTo_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean/declarations/canonicalindexpatch-appliesto-iff--b541bf3f5c814a68184d1453.md) | 42 | `result-track:b541bf3f5c814a68184d14531852b5531f3596662290f9f59f83f96c58724e2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
