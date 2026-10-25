# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecatedModule.Variantfc20f7a7c4ee0a0ba12033fd77fb62f9233f258fbf692c4090dbf6bd176aa015

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b6ac0cc708ff3004f1c6d9049c14e16241f65d2` · SHA-256 `fc20f7a7c4ee0a0ba12033fd77fb62f9233f258fbf692c4090dbf6bd176aa015`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.DeprecatedModule
import Mathlib.Tactic.Linter.DocPrime
import Mathlib.Tactic.Linter.DocString

deprecated_module (since := "2025-04-10")

/--
info: Deprecated modules

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with no message
-/
#guard_msgs in
#show_deprecated_modules

-- Deprecating the current module is possible and allows to add more deprecation information.
deprecated_module "We can also give more details about the deprecation" (since := "2025-04-10")

/--
info: Deprecated modules

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with message 'We can also give more details about the deprecation'

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with no message
-/
#guard_msgs in
#show_deprecated_modules

/- Commenting out the following test, since it does not work in CI
besides, it suggests the current date, so it should *not* be uncommented
until that is also fixed!
/-- error: Invalid date: the expected format is "2025-04-14" -/
#guard_msgs in
deprecated_module "Text" (since := "2025-02-31")
-/

/--
info: Deprecated modules

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with message 'We can also give more details about the deprecation'

'MathlibTest.DeprecatedModule' deprecates to
#[Mathlib.Tactic.Linter.DocPrime, Mathlib.Tactic.Linter.DocString]
with no message
-/
#guard_msgs in
#show_deprecated_modules
```
