# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Thm.Variante787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af14bbb0d8fc8cc26aede806be07b0872836b70e` · SHA-256 `e787eb57f674aaf3e837c4723b89798e4ce6b1f933f1ebd409eb29fbf3fb6669`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-- warning: declaration uses `sorry` -/
#guard_msgs in
theorem bad_contains_sorry : True := by
  have x : True := sorry
  exact True.intro
```
