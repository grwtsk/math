# Testable.check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe01a13bbe6d7fa2b146a2f10c5f6c823ffdfbf510ce961017366b59a703a04e",
  "kind": "def",
  "lexical_name": "Testable.check",
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
  "slug": "testable-check--9afd929f69635be639d932af",
  "source": {
    "blob": "89df7d17deb2a2cd6f6d9deaf4342e5774a50324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 543,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9afd929f69635be639d932af2cc53dc6c903ae6829a17a376490d683ebdafc1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe01a13bbe6d7fa2b146a2f10c5f6c823ffdfbf510ce961017366b59a703a04e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Testable.check (p : Prop) (cfg : Configuration := {})
    (p' : Decorations.DecorationsOf p := by mk_decorations) [Testable p'] : IO PUnit := do
  match ← Testable.checkIO p' cfg with
  | TestResult.success _ => if !cfg.quiet then IO.println "Success"
  | TestResult.gaveUp n => if !cfg.quiet then IO.println s!"Gave up {n} times"
  | TestResult.failure _ xs n => throw (IO.userError $ formatFailure "Found problems!" xs n)

-- #eval Testable.check (∀ (x y z a : Nat) (h1 : 3 < x) (h2 : 3 < y), x - y = y - x)
--   Configuration.verbose
-- #eval Testable.check (∀ x : Nat, ∀ y : Nat, x + y = y + x) Configuration.verbose
-- #eval Testable.check (∀ (x : (Nat × Nat)), x.fst - x.snd - 10 = x.snd - x.fst - 10)
--   Configuration.verbose
-- #eval Testable.check (∀ (x : Nat) (h : 10 < x), 5 < x) Configuration.verbose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89df7d17deb2a2cd6f6d9deaf4342e5774a50324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
